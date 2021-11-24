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
  var theme = YaruTheme.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yaru Example',
      theme: theme,
      home: HomePage(themeChanged: (themeName) {
        setState(() {
          switch (themeName) {
            case 'default-light':
              theme = YaruTheme.light;
              break;
            case 'default-dark':
              theme = YaruTheme.dark;
              break;
            case 'budgie-light':
              theme = YaruTheme.budgieLight;
              break;
            case 'budgie-dark':
              theme = YaruTheme.budgieDark;
              break;
            case 'kubuntu-light':
              theme = YaruTheme.kubuntuLight;
              break;
            case 'kubuntu-dark':
              theme = YaruTheme.kubuntuDark;
              break;
            case 'lubuntu-light':
              theme = YaruTheme.lubuntuLight;
              break;
            case 'lubuntu-dark':
              theme = YaruTheme.lubuntuDark;
              break;
            case 'mate-light':
              theme = YaruTheme.mateLight;
              break;
            case 'mate-dark':
              theme = YaruTheme.mateDark;
              break;
            case 'studio-light':
              theme = YaruTheme.studioLight;
              break;
            case 'studio-dark':
              theme = YaruTheme.studioDark;
              break;
            case 'xubuntu-light':
              theme = YaruTheme.xubuntuLight;
              break;
            case 'xubuntu-dark':
              theme = YaruTheme.xubuntuDark;
              break;
          }
        });
      }),
    );
  }
}
