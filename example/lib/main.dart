import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/view/home_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LightTheme(yaruLight)),
      ChangeNotifierProvider(create: (_) => DarkTheme(yaruDark)),
      ChangeNotifierProvider(create: (_) => AppTheme(ThemeMode.light)),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: context.watch<AppTheme>().value,
      theme: context.watch<LightTheme>().value,
      darkTheme: context.watch<DarkTheme>().value,
    );
  }
}

class LightTheme extends ValueNotifier<ThemeData> {
  LightTheme(ThemeData value) : super(value);
}

class DarkTheme extends ValueNotifier<ThemeData> {
  DarkTheme(ThemeData value) : super(value);
}

class AppTheme extends ValueNotifier<ThemeMode> {
  AppTheme(ThemeMode value) : super(value);

  void apply(Brightness brightness) {
    switch (brightness) {
      case Brightness.dark:
        value = ThemeMode.dark;
        break;
      case Brightness.light:
        value = ThemeMode.light;
        break;
    }
  }
}
