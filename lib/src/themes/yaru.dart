import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = YaruColors.ubuntuOrange;

final _lightColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: Colors.white,
  backgroundColor: YaruColors.porcelain,
  errorColor: YaruColors.red,
  brightness: Brightness.light,
);

final yaruLight = createYaruLightTheme(
    colorScheme: _lightColorScheme,
    primaryColor: _primaryColor,
    elevatedButtonColor: YaruColors.green);

final _darkColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: YaruColors.jet,
  backgroundColor: YaruColors.jet,
  errorColor: YaruColors.red,
  brightness: Brightness.dark,
);

final yaruDark = createYaruDarkTheme(
    colorScheme: _darkColorScheme,
    primaryColor: _primaryColor,
    elevatedButtonColor: YaruColors.green);

final yaruSageLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.sage,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.sage,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.sage,
);

final yaruSageDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.sage,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.sage,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.sage,
);

final yaruPrussianGreenLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.prussianGreen,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.prussianGreen,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.prussianGreen,
);

final yaruPrussianGreenDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.prussianGreen,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.prussianGreen,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.prussianGreen,
);

final yaruOliveLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.olive,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.olive,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.olive,
);

final yaruOliveDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.olive,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.olive,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.olive,
);

final yaruBarkLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.bark,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.bark,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.bark,
);

final yaruBarkDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.bark,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.bark,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.bark,
);

final yaruViridianLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.viridian,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.viridian,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.viridian,
);

final yaruViridianDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.viridian,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.viridian,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.viridian,
);

final yaruPurpleLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.purple,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.purple,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.purple,
);

final yaruPurpleDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.purple,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.purple,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.purple,
);

final yaruRedLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.lightRed,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.lightRed,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.lightRed,
);

final yaruRedDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.lightRed,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.lightRed,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.lightRed,
);

final yaruBlueLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.blue,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.blue,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.blue,
);

final yaruBlueDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.blue,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.blue,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.blue,
);

final yaruMagentaLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.magenta,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.magenta,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: YaruColors.magenta,
);

final yaruMagentaDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: YaruColors.magenta,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.magenta,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: YaruColors.magenta,
);
