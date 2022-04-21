import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';
import 'package:yaru/src/themes/yaru_dark.dart';
import 'package:yaru/src/themes/yaru_light.dart';

enum YaruAccent {
  orange,
  bark,
  sage,
  olive,
  viridian,
  prussianGreen,
  blue,
  purple,
  magenta,
  red,
}

ThemeData getYaruLightTheme(YaruAccent accent) {
  return _yaruLightThemes[accent] ?? yaruLight;
}

ThemeData getYaruDarkTheme(YaruAccent accent) {
  return _yaruDarkThemes[accent] ?? yaruDark;
}

final _yaruLightThemes = <YaruAccent, ThemeData>{
  YaruAccent.orange: yaruLight,
  YaruAccent.bark: yaruBarkLight,
  YaruAccent.sage: yaruSageLight,
  YaruAccent.olive: yaruOliveLight,
  YaruAccent.viridian: yaruViridianLight,
  YaruAccent.prussianGreen: yaruPrussianGreenLight,
  YaruAccent.blue: yaruBlueLight,
  YaruAccent.purple: yaruPurpleLight,
  YaruAccent.magenta: yaruMagentaLight,
  YaruAccent.red: yaruRedLight,
};

final _yaruDarkThemes = <YaruAccent, ThemeData>{
  YaruAccent.orange: yaruDark,
  YaruAccent.bark: yaruBarkDark,
  YaruAccent.sage: yaruSageDark,
  YaruAccent.olive: yaruOliveDark,
  YaruAccent.viridian: yaruViridianDark,
  YaruAccent.prussianGreen: yaruPrussianGreenDark,
  YaruAccent.blue: yaruBlueDark,
  YaruAccent.purple: yaruPurpleDark,
  YaruAccent.magenta: yaruMagentaDark,
  YaruAccent.red: yaruRedDark,
};

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
