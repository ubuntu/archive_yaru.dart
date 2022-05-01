import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gsettings/gsettings.dart';
import 'package:platform/platform.dart';

import 'package:yaru/yaru.dart';

YaruVariant? _detectYaruVariant(Platform platform) {
  final desktop = !kIsWeb
      ? platform.environment['XDG_CURRENT_DESKTOP']?.toUpperCase()
      : null;
  if (desktop != null) {
    if (desktop.contains('BUDGIE')) return YaruVariant.ubuntuBudgieBlue;
    if (desktop.contains('GNOME')) return YaruVariant.orange;
    if (desktop.contains('KDE')) return YaruVariant.kubuntuBlue;
    if (desktop.contains('LXQT')) return YaruVariant.lubuntuBlue;
    if (desktop.contains('MATE')) return YaruVariant.ubuntuMateGreen;
    if (desktop.contains('XFCE')) return YaruVariant.xubuntuBlue;
  }
  return null;
}

/// Applies Yaru theme to descendant widgets.
///
/// Descendant widgets obtain the current theme's [YaruThemeData] object using
/// [YaruTheme.of]. When a widget uses [YaruTheme.of], it is automatically
/// rebuilt if the theme later changes, so that the changes can be applied.
///
/// See also:
///  * [YaruThemeData]
class YaruTheme extends StatefulWidget {
  /// Applies the given theme [data] to [child].
  ///
  /// The [data] and [child] arguments must not be null.
  const YaruTheme({
    Key? key,
    required this.child,
    this.data = const YaruThemeData(),
    @visibleForTesting Platform? platform,
    @visibleForTesting GSettings? settings,
  })  : _platform = platform ?? const LocalPlatform(),
        _settings = settings,
        super(key: key);

  /// The widget below this widget in the tree.
  final Widget child;

  /// Specifies the theme for descendant widgets.
  final YaruThemeData data;

  final Platform _platform;
  final GSettings? _settings;

  /// The data from the closest [YaruTheme] instance that encloses the given
  /// context.
  static YaruThemeData of(BuildContext context) => maybeOf(context)!;

  /// An optional data from the closest [YaruTheme] instance that encloses the
  /// given context or `null` if there is no such ancestor.
  static YaruThemeData? maybeOf(BuildContext context) {
    final theme =
        context.dependOnInheritedWidgetOfExactType<_YaruInheritedTheme>();
    return theme?.data;
  }

  @override
  State<YaruTheme> createState() => _YaruThemeState();
}

class _YaruThemeState extends State<YaruTheme> {
  YaruVariant? _variant;
  GSettings? _settings;
  StreamSubscription<List<String>>? _subscription;

  @override
  void initState() {
    super.initState();
    if (widget.data.variant == null && !kIsWeb && widget._platform.isLinux) {
      _settings = widget._settings ?? GSettings('org.gnome.desktop.interface');
      _subscription = _settings!.keysChanged.listen((keys) {
        if (keys.contains('gtk-theme')) {
          updateVariant();
        }
      });
      updateVariant();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    if (widget._settings == null) {
      _settings?.close();
    }
  }

  // "Yaru-prussiangreen-dark" => YaruAccent.prussianGreen
  YaruVariant? resolveVariant(String name) {
    if (name.endsWith('-dark')) {
      name = name.substring(0, name.length - 5);
    }
    if (name.startsWith('Yaru-')) {
      name = name.substring(5);
    }
    if (name == 'Yaru') {
      return YaruVariant.orange;
    }
    for (var value in YaruVariant.values) {
      if (value.name.toLowerCase() == name.toLowerCase()) {
        return value;
      }
    }
    return _detectYaruVariant(widget._platform);
  }

  Future<void> updateVariant() async {
    assert(!kIsWeb && widget._platform.isLinux);
    final name = await _settings?.get('gtk-theme') as DBusString;
    setState(() => _variant = resolveVariant(name.value));
  }

  ThemeMode resolveMode() {
    final mode = widget.data.themeMode ?? ThemeMode.system;
    if (mode == ThemeMode.system) {
      return MediaQuery.platformBrightnessOf(context) == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light;
    }
    return mode;
  }

  YaruThemeData resolveData() {
    return YaruThemeData(
      variant: widget.data.variant ?? _variant,
      highContrast:
          widget.data.highContrast ?? MediaQuery.highContrastOf(context),
      themeMode: resolveMode(),
    );
  }

  ThemeData resolveTheme(YaruThemeData data) {
    final dark = data.themeMode == ThemeMode.dark;

    if (data.highContrast!) {
      return dark ? yaruHighContrastDark : yaruHighContrastLight;
    }

    final accent = data.variant ?? YaruVariant.orange;
    return dark ? getYaruDarkTheme(accent) : getYaruLightTheme(accent);
  }

  @override
  Widget build(BuildContext context) {
    final data = resolveData();
    return _YaruInheritedTheme(
      data: data,
      child: AnimatedTheme(
        data: resolveTheme(data),
        child: widget.child,
      ),
    );
  }
}

@immutable
class YaruThemeData with Diagnosticable {
  const YaruThemeData({
    this.variant,
    this.highContrast,
    this.themeMode,
  });

  /// Specifies the theme variant.
  final YaruVariant? variant;

  /// Whether to use high contrast colors.
  final bool? highContrast;

  /// Whether a light or dark theme is used.
  final ThemeMode? themeMode;

  /// Creates a copy of this [YaruThemeData] with the provided values.
  YaruThemeData copyWith({
    YaruVariant? variant,
    bool? highContrast,
    ThemeMode? themeMode,
  }) {
    return YaruThemeData(
      variant: variant ?? this.variant,
      highContrast: highContrast ?? this.highContrast,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<YaruVariant>('variant', variant));
    properties.add(DiagnosticsProperty<bool>('highContrast', highContrast));
    properties.add(DiagnosticsProperty<ThemeMode>('themeMode', themeMode));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is YaruThemeData &&
        other.variant == variant &&
        other.highContrast == highContrast &&
        other.themeMode == themeMode;
  }

  @override
  int get hashCode => Object.hash(variant, highContrast, themeMode);
}

class _YaruInheritedTheme extends InheritedTheme {
  const _YaruInheritedTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final YaruThemeData? data;

  @override
  bool updateShouldNotify(covariant _YaruInheritedTheme oldWidget) {
    return data != oldWidget.data;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return _YaruInheritedTheme(data: data, child: child);
  }
}
