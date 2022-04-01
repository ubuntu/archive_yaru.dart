import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';

import 'package:yaru/src/themes/common_themes.dart';

final b = YaruColors.createMaterialColor(Colors.black);
final yaruHighContrastLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: b,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: Colors.black,
    cardColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: b,
);

final w = YaruColors.createMaterialColor(Colors.white);
final yaruHighContrastDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: w,
    primaryColorDark: Colors.white,
    accentColor: Colors.white,
    cardColor: Colors.black,
    backgroundColor: Colors.black,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: w,
);
