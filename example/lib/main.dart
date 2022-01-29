import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_example/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var theme = yaruLight;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaru Example',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: HomePage(
          themeChanged: (themeName) => setState(() {
                if (themeName == 'Yaru-light') {
                  theme = yaruLight;
                } else if (themeName == 'Yaru-dark') {
                  theme = yaruDark;
                }
              })),
    );
  }
}
