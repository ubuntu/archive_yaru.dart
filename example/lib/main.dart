import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(builder: (context) {
        return YaruTheme(
          data: AppTheme.of(context),
          child: HomePage(),
        );
      }),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppTheme {
  static YaruThemeData of(BuildContext context) {
    return SharedAppData.getValue(context, 'theme', () => YaruThemeData());
  }

  static void apply(
    BuildContext context, {
    YaruVariant? variant,
    bool? highContrast,
    ThemeMode? themeMode,
  }) {
    SharedAppData.setValue(
      context,
      'theme',
      AppTheme.of(context).copyWith(
        themeMode: themeMode,
        variant: variant,
        highContrast: highContrast,
      ),
    );
  }
}
