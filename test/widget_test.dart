import 'dart:async';

import 'package:dbus/dbus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:platform/platform.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';
import 'package:yaru/yaru.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([XdgDesktopPortalClient])
void main() {
  testWidgets('variant', (tester) async {
    await tester.pumpTheme(variant: YaruVariant.blue);
    final context = tester.element(find.byType(Container));
    expect(YaruTheme.of(context).variant, YaruVariant.blue);
  });

  group('gtk-theme', () {
    testWidgets('unknown', (tester) async {
      final settings = createMockXdgDesktopPortalClient(theme: '');
      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, null);
    });

    testWidgets('yaru', (tester) async {
      final settings = createMockXdgDesktopPortalClient(theme: 'Yaru');
      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.orange);
    });

    testWidgets('dark', (tester) async {
      final settings = createMockXdgDesktopPortalClient(theme: 'Yaru-dark');
      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.orange);
    });

    testWidgets('color', (tester) async {
      final settings = createMockXdgDesktopPortalClient(theme: 'Yaru-blue');
      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.blue);
    });

    testWidgets('change', (tester) async {
      final settings = createMockXdgDesktopPortalClient(theme: 'Yaru-blue');
      final keysChanged = StreamController<List<String>>(sync: true);
      addTearDown(keysChanged.close);
      when(settings.keysChanged).thenAnswer((_) => keysChanged.stream);

      await tester.pumpTheme(settings: settings);
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.blue);

      when(settings.get('gtk-theme'))
          .thenAnswer((_) async => const DBusString('Yaru-red'));
      keysChanged.add(['gtk-theme']);
      await tester.pump();
      expect(YaruTheme.of(context).variant, YaruVariant.red);
    });
  });

  group('desktop', () {
    testWidgets('unknown', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'unknown', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, isNull);
    });

    testWidgets('budgie', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'budgie-desktop', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.ubuntuBudgieBlue);
    });

    testWidgets('ubuntu', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'GNOME:ubuntu', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.orange);
    });

    testWidgets('kde', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'KDE', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.kubuntuBlue);
    });

    testWidgets('lubuntu', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'LXQt', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.lubuntuBlue);
    });

    testWidgets('mate', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'MATE', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.ubuntuMateGreen);
    });

    testWidgets('xubuntu', (tester) async {
      final settings = createMockXdgDesktopPortalClient();
      await tester.pumpTheme(desktop: 'XFCE', settings: settings);
      await untilCalled(settings.get('gtk-theme'));
      final context = tester.element(find.byType(Container));
      expect(YaruTheme.of(context).variant, YaruVariant.xubuntuBlue);
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

MockXdgDesktopPortalClient createMockXdgDesktopPortalClient(
    {String theme = ''}) {
  final client = MockXdgPortalClient();
  when(client.settings.settingChanged).thenAnswer((_) => const Stream.empty());
  when(client.settings.get('org.gnome.desktop.interface', 'gtk-theme'))
      .thenAnswer((_) async => DBusString(theme));
  return client;
}

extension ThemeTester on WidgetTester {
  Future<void> pumpTheme({
    YaruVariant? variant,
    bool? highContrast,
    ThemeMode? themeMode,
    String desktop = '',
    XdgDesktopPortalClient? portalClient,
  }) async {
    final data = YaruThemeData(
      variant: variant,
      highContrast: highContrast,
      themeMode: themeMode,
    );
    await pumpWidget(
      MaterialApp(
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
      ),
    );
    return pump();
  }
}
