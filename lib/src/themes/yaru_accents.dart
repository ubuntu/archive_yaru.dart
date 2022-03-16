import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

const olive = Color(0xFF4B8501);
const bark = Color(0xFF787859);
const viridian = Color(0xFF03875B);
const purple = Color(0xFF8856EB);
const red = Color(0xFFE61D34);
const blue = Color(0xFF0073E5);
const magenta = Color(0xFFBC33DB);

final oliveLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(olive),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: olive,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(olive),
);

final oliveDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(olive),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: olive,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(olive),
);

final barkLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(bark),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: bark,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(bark),
);

final barkDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(bark),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: bark,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(bark),
);

final viridianLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(viridian),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: viridian,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(viridian),
);

final viridianDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(viridian),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: viridian,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(viridian),
);

final purpleLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(purple),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: purple,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(purple),
);

final purpleDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(purple),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: purple,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(purple),
);

final redLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(red),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: red,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(red),
);

final redDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(red),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: red,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(red),
);

final blueLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(blue),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: blue,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(blue),
);

final blueDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(blue),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: blue,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(blue),
);

final magentaLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(magenta),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: magenta,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: createMaterialColor(magenta),
);

final magentaDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: createMaterialColor(magenta),
    primaryColorDark: YaruColors.coolGrey,
    accentColor: magenta,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: createMaterialColor(magenta),
);
