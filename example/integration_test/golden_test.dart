import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:path/path.dart' as path;
import 'package:yaru/yaru.dart';
import 'package:yaru_example/main.dart' as app;
import 'package:yaru_example/main.dart';
import 'package:yaru_example/view/home_page.dart';

// NOTE: run `make goldens` to update golden images

const _kGoldenDiffTolerance = 0.005;

Future<void> main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  goldenFileComparator = GoldenDiffComparator(
    path.join(
      path.fromUri((goldenFileComparator as LocalFileComparator).basedir),
      'yaru.dart',
    ),
    tolerance: _kGoldenDiffTolerance,
  );

  testWidgets('fonts', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.takeScreenshots('fonts');
  });

  testWidgets('buttons', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Controls'));
    await tester.pump();
    await tester.takeScreenshots('buttons');
  });

  testWidgets('checks', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Controls'));
    await tester.pump();
    await tester.tap(find.text('Checks'));
    await tester.pump();
    await tester.takeScreenshots('checks');
  });

  testWidgets('switches', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Controls'));
    await tester.pump();
    await tester.tap(find.text('Switches'));
    await tester.pump();
    await tester.takeScreenshots('switches');
  });

  testWidgets('text fields', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Text Fields'));
    await tester.pump();
    primaryFocus?.unfocus();
    await tester.pump();
    await tester.takeScreenshots('text-fields');
  });

  testWidgets('containers', (tester) async {
    tester.runApp();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Containers'));
    await tester.pump();
    await tester.takeScreenshots('containers');
  });
}

extension on WidgetTester {
  void runApp() {
    view.devicePixelRatio = 1;
    view.physicalSize = const Size(600, 700);
    app.main();
  }

  void selectTheme({
    YaruVariant? variant,
    bool? highContrast,
    ThemeMode? themeMode,
  }) async {
    final context = element(find.byType(HomePage));
    AppTheme.apply(
      context,
      variant: variant,
      highContrast: highContrast,
      themeMode: themeMode,
    );
  }

  Future<void> takeScreenshots(String screen) async {
    for (final themeMode in [ThemeMode.light, ThemeMode.dark]) {
      selectTheme(
        variant: YaruVariant.orange,
        themeMode: themeMode,
        highContrast: false,
      );
      await pumpAndSettle();
      await takeScreenshot(screen);

      selectTheme(themeMode: themeMode, highContrast: true);
      await pumpAndSettle();
      await takeScreenshot(screen);
    }
  }

  Future<void> takeScreenshot(String screen) async {
    final context = element(find.byType(HomePage));
    final theme = AppTheme.of(context);
    final suffix = [
      if (theme.highContrast == true) 'high-contrast' else theme.variant?.name,
      theme.themeMode?.name,
    ].join('-');

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/$screen-$suffix.png'),
    );
  }
}

class GoldenDiffComparator extends LocalFileComparator {
  GoldenDiffComparator(
    String testFile, {
    required this.tolerance,
  }) : super(Uri.parse(testFile));

  final double tolerance;

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    final ComparisonResult result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    if (!result.passed && result.diffPercent > tolerance) {
      final error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }
    if (!result.passed) {
      debugPrint(
        'A tolerable difference of ${result.diffPercent * 100}% was found when comparing $golden.',
      );
    }
    return result.passed || result.diffPercent <= tolerance;
  }
}
