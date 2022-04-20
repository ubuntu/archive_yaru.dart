import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

final oliveMaterialColor = YaruColors.createMaterialColor(YaruColors.olive);
final barkMaterialColor = YaruColors.createMaterialColor(YaruColors.bark);
final sageMaterialColor = YaruColors.createMaterialColor(YaruColors.sage);
final prussianGreenMaterialColor =
    YaruColors.createMaterialColor(YaruColors.prussianGreen);
final viridianMaterialColor =
    YaruColors.createMaterialColor(YaruColors.viridian);
final purpleMaterialColor = YaruColors.createMaterialColor(YaruColors.purple);
final lightRedMaterialColor =
    YaruColors.createMaterialColor(YaruColors.lightRed);
final blueMaterialColor = YaruColors.createMaterialColor(YaruColors.blue);
final magentaMaterialColor = YaruColors.createMaterialColor(YaruColors.magenta);

final yaruSageLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: sageMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.sage,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: sageMaterialColor,
);

final yaruSageDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: sageMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.sage,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: sageMaterialColor,
);

final yaruPrussianGreenLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: prussianGreenMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.prussianGreen,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: prussianGreenMaterialColor,
);

final yaruPrussianGreenDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: prussianGreenMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.prussianGreen,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: prussianGreenMaterialColor,
);

final yaruOliveLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: oliveMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.olive,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: oliveMaterialColor,
);

final yaruOliveDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: oliveMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.olive,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: oliveMaterialColor,
);

final yaruBarkLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: barkMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.bark,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: barkMaterialColor,
);

final yaruBarkDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: barkMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.bark,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: barkMaterialColor,
);

final yaruViridianLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: viridianMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.viridian,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: viridianMaterialColor,
);

final yaruViridianDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: viridianMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.viridian,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: viridianMaterialColor,
);

final yaruPurpleLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: purpleMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.purple,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: purpleMaterialColor,
);

final yaruPurpleDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: purpleMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.purple,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: purpleMaterialColor,
);

final yaruRedLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: lightRedMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.lightRed,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: lightRedMaterialColor,
);

final yaruRedDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: lightRedMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.lightRed,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: lightRedMaterialColor,
);

final yaruBlueLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: blueMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.blue,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: blueMaterialColor,
);

final yaruBlueDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: blueMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.blue,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: blueMaterialColor,
);

final yaruMagentaLight = createYaruLightTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: magentaMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.magenta,
    cardColor: Colors.white,
    backgroundColor: YaruColors.porcelain,
    errorColor: YaruColors.red,
    brightness: Brightness.light,
  ),
  primaryColor: magentaMaterialColor,
);

final yaruMagentaDark = createYaruDarkTheme(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: magentaMaterialColor,
    primaryColorDark: YaruColors.coolGrey,
    accentColor: YaruColors.magenta,
    cardColor: YaruColors.jet,
    backgroundColor: YaruColors.jet,
    errorColor: YaruColors.red,
    brightness: Brightness.dark,
  ),
  primaryColor: magentaMaterialColor,
);
