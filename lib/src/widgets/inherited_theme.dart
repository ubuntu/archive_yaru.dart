import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gsettings/gsettings.dart';
import 'package:platform/platform.dart';

import 'package:yaru/yaru.dart';

YaruFlavor? _detectYaruFlavor(Platform platform) {
  final desktop = !kIsWeb
      ? platform.environment['XDG_CURRENT_DESKTOP']?.toUpperCase()
      : null;
  if (desktop != null) {
    if (desktop.contains('BUDGIE')) return YaruFlavor.budgie;
    if (desktop.contains('GNOME')) return YaruFlavor.ubuntu;
    if (desktop.contains('KDE')) return YaruFlavor.kubuntu;
    if (desktop.contains('LXQT')) return YaruFlavor.lubuntu;
    if (desktop.contains('MATE')) return YaruFlavor.mate;
    if (desktop.contains('XFCE')) return YaruFlavor.xubuntu;
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
  YaruAccent? _accent;
  YaruFlavor? _flavor;
  GSettings? _settings;
  StreamSubscription<List<String>>? _subscription;

  @override
  void initState() {
    super.initState();
    if (widget.data.accent == null && !kIsWeb && widget._platform.isLinux) {
      _settings = widget._settings ?? GSettings('org.gnome.desktop.interface');
      _subscription = _settings!.keysChanged.listen((keys) {
        if (keys.contains('gtk-theme')) {
          updateAccent();
        }
      });
      updateAccent();
    }
    if (widget.data.flavor == null) {
      _flavor = _detectYaruFlavor(widget._platform);
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
  YaruAccent? resolveAccent(String name) {
    if (name.endsWith('-dark')) {
      name = name.substring(0, name.length - 5);
    }
    if (name.startsWith('Yaru-')) {
      name = name.substring(5);
    }
    if (name == 'Yaru') {
      return YaruAccent.orange;
    }
    for (var value in YaruAccent.values) {
      if (value.name.toLowerCase() == name.toLowerCase()) {
        return value;
      }
    }
    return null;
  }

  Future<void> updateAccent() async {
    assert(!kIsWeb && widget._platform.isLinux);
    final name = await _settings?.get('gtk-theme') as DBusString;
    setState(() => _accent = resolveAccent(name.value));
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
      accent: widget.data.accent ?? _accent,
      flavor: widget.data.flavor ?? _flavor,
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

    switch (data.flavor) {
      case YaruFlavor.budgie:
        return dark ? yaruUbuntuBudgieDark : yaruUbuntuBudgieLight;
      case YaruFlavor.kubuntu:
        return dark ? yaruKubuntuDark : yaruKubuntuLight;
      case YaruFlavor.lubuntu:
        return dark ? yaruLubuntuDark : yaruLubuntuLight;
      case YaruFlavor.mate:
        return dark ? yaruMateDark : yaruMateLight;
      case YaruFlavor.xubuntu:
        return dark ? yaruXubuntuDark : yaruXubuntuLight;
      default:
        final accent = data.accent ?? YaruAccent.orange;
        return dark ? getYaruDarkTheme(accent) : getYaruLightTheme(accent);
    }
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
    this.accent,
    this.flavor,
    this.highContrast,
    this.themeMode,
  });

  /// Specifies the accent color. Only applicaple if [flavor] is
  /// `YaruFlavor.ubuntu`.
  final YaruAccent? accent;

  /// Specifies the theme flavor.
  final YaruFlavor? flavor;

  /// Whether to use high contrast colors.
  final bool? highContrast;

  /// Whether a light or dark theme is used.
  final ThemeMode? themeMode;

  /// Creates a copy of this [YaruThemeData] with the provided values.
  YaruThemeData copyWith({
    YaruAccent? accent,
    YaruFlavor? flavor,
    bool? highContrast,
    ThemeMode? themeMode,
  }) {
    return YaruThemeData(
      accent: accent ?? this.accent,
      flavor: flavor ?? this.flavor,
      highContrast: highContrast ?? this.highContrast,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<YaruAccent>('accent', accent));
    properties.add(DiagnosticsProperty<YaruFlavor>('flavor', flavor));
    properties.add(DiagnosticsProperty<bool>('highContrast', highContrast));
    properties.add(DiagnosticsProperty<ThemeMode>('themeMode', themeMode));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is YaruThemeData &&
        other.accent == accent &&
        other.flavor == flavor &&
        other.highContrast == highContrast &&
        other.themeMode == themeMode;
  }

  @override
  int get hashCode => Object.hash(accent, flavor, highContrast, themeMode);
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
