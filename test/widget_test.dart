import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gsettings/gsettings.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:platform/platform.dart';
import 'package:yaru/yaru.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([GSettings])
void main() {
  group('accent', () {
    testWidgets('explicit', (tester) async {
      await tester.pumpTheme(accent: YaruAccent.blue);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).accent, YaruAccent.blue);
    });

    testWidgets('unknown', (tester) async {
      final settings = MockGSettings();
      when(settings.keysChanged).thenAnswer((_) => Stream.empty());
      when(settings.get('gtk-theme')).thenAnswer((_) async => DBusString(''));

      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).accent, null);
    });

    testWidgets('yaru', (tester) async {
      final settings = MockGSettings();
      when(settings.keysChanged).thenAnswer((_) => Stream.empty());
      when(settings.get('gtk-theme'))
          .thenAnswer((_) async => DBusString('Yaru-blue'));

      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).accent, YaruAccent.blue);
    });

    testWidgets('change', (tester) async {
      final settings = MockGSettings();
      final keysChanged = StreamController<List<String>>(sync: true);
      addTearDown(keysChanged.close);
      when(settings.keysChanged).thenAnswer((_) => keysChanged.stream);
      when(settings.get('gtk-theme'))
          .thenAnswer((_) async => DBusString('Yaru-blue'));

      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).accent, YaruAccent.blue);

      when(settings.get('gtk-theme'))
          .thenAnswer((_) async => DBusString('Yaru-red'));
      keysChanged.add(['gtk-theme']);
      await tester.pump();
      expect(YaruTheme.of(context).accent, YaruAccent.red);
    });
  });

  group('flavor', () {
    testWidgets('explicit', (tester) async {
      await tester.pumpTheme(flavor: YaruFlavor.ubuntu);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.ubuntu);
    });

    testWidgets('unknown', (tester) async {
      await tester.pumpTheme(desktop: 'unknown');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, isNull);
    });

    testWidgets('budgie', (tester) async {
      await tester.pumpTheme(desktop: 'budgie-desktop');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.budgie);
    });

    testWidgets('ubuntu', (tester) async {
      await tester.pumpTheme(desktop: 'GNOME:ubuntu');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.ubuntu);
    });

    testWidgets('kde', (tester) async {
      await tester.pumpTheme(desktop: 'KDE');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.kubuntu);
    });

    testWidgets('lubuntu', (tester) async {
      await tester.pumpTheme(desktop: 'LXQt');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.lubuntu);
    });

    testWidgets('mate', (tester) async {
      await tester.pumpTheme(desktop: 'MATE');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.mate);
    });

    testWidgets('xubuntu', (tester) async {
      await tester.pumpTheme(desktop: 'XFCE');
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).flavor, YaruFlavor.xubuntu);
    });
  });

  group('high contrast', () {
    testWidgets('on', (tester) async {
      await tester.pumpTheme(highContrast: true);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).highContrast, isTrue);
    });

    testWidgets('off', (tester) async {
      await tester.pumpTheme(highContrast: false);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).highContrast, isFalse);
    });
  });

  group('theme mode', () {
    testWidgets('light', (tester) async {
      await tester.pumpTheme(themeMode: ThemeMode.light);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).themeMode, ThemeMode.light);
    });

    testWidgets('dark', (tester) async {
      await tester.pumpTheme(themeMode: ThemeMode.dark);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).themeMode, ThemeMode.dark);
    });
  });
}

extension ThemeTester on WidgetTester {
  Future<void> pumpTheme({
    YaruAccent? accent,
    YaruFlavor? flavor,
    bool? highContrast,
    ThemeMode? themeMode,
    String desktop = '',
    GSettings? settings,
  }) async {
    final data = YaruThemeData(
      accent: accent,
      flavor: flavor,
      highContrast: highContrast,
      themeMode: themeMode,
    );
    await pumpWidget(MaterialApp(
      key: ValueKey(data),
      home: YaruTheme(
        child: Container(),
        data: data,
        platform: FakePlatform(
          operatingSystem: Platform.linux,
          environment: {'XDG_CURRENT_DESKTOP': desktop},
        ),
        settings: settings,
      ),
    ));
    return pump();
  }
}
