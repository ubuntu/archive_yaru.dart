import 'package:flutter/material.dart';
import 'package:yaru/src/theme/yaru_dark.dart';
import 'package:yaru/src/theme/yaru_light.dart';

///[Theme] Gives you the available Yaru themes.
class Theme {
  Theme._();

  ///[dark] return ThemeData for the dark mode.
  static ThemeData get dark => _darkTheme();

  ///[light] return ThemeData for the light mode.
  static ThemeData get light => _lightTheme();

  //get a dark theme data.
  static ThemeData _darkTheme() {
    return YaruDark().themeData();
  }

  //get a light theme data.
  static ThemeData _lightTheme() {
    return YaruLight().themeData();
  }
}
