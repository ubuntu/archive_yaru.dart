import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';
import 'package:yaru/src/themes/yaru_dark.dart';
import 'package:yaru/src/themes/yaru_kubuntu_dark.dart';
import 'package:yaru/src/themes/yaru_kubuntu_light.dart';
import 'package:yaru/src/themes/yaru_light.dart';
import 'package:yaru/src/themes/yaru_lubuntu_dark.dart';
import 'package:yaru/src/themes/yaru_lubuntu_light.dart';
import 'package:yaru/src/themes/yaru_mate_dark.dart';
import 'package:yaru/src/themes/yaru_mate_light.dart';
import 'package:yaru/src/themes/yaru_ubuntu_budgie_dark.dart';
import 'package:yaru/src/themes/yaru_ubuntu_budgie_light.dart';
import 'package:yaru/src/themes/yaru_ubuntu_studio_dark.dart';
import 'package:yaru/src/themes/yaru_ubuntu_studio_light.dart';
import 'package:yaru/src/themes/yaru_xubuntu_dark.dart';
import 'package:yaru/src/themes/yaru_xubuntu_light.dart';

/// Describes a Yaru variant and its primary color.
class YaruVariant {
  const YaruVariant._(this.name, this.color);

  /// The name of the variant.
  final String name;

  /// The primary color of the variant.
  final MaterialColor color;

  static const orange = YaruVariant._('orange', YaruColors.ubuntuOrange);
  static const bark = YaruVariant._('bark', YaruColors.bark);
  static const sage = YaruVariant._('sage', YaruColors.sage);
  static const olive = YaruVariant._('olive', YaruColors.olive);
  static const viridian = YaruVariant._('viridian', YaruColors.viridian);
  static const prussianGreen =
      YaruVariant._('prussianGreen', YaruColors.prussianGreen);
  static const blue = YaruVariant._('blue', YaruColors.blue);
  static const purple = YaruVariant._('purple', YaruColors.purple);
  static const magenta = YaruVariant._('magenta', YaruColors.magenta);
  static const red = YaruVariant._('red', YaruColors.lightRed);

  /// Kubuntu
  static const kubuntuBlue = YaruVariant._('kubuntu', FlavorColors.kubuntuBlue);

  /// Lubuntu
  static const lubuntuBlue = YaruVariant._('lubuntu', FlavorColors.lubuntuBlue);

  /// Ubuntu Budgie
  static const ubuntuBudgieBlue =
      YaruVariant._('ubuntuBudgie', FlavorColors.ubuntuBudgieBlue);

  /// Ubuntu MATE
  static const ubuntuMateGreen =
      YaruVariant._('ubuntuMate', FlavorColors.ubuntuMateGreen);

  /// Ubuntu Studio
  static const ubuntuStudioBlue =
      YaruVariant._('ubuntuStudio', FlavorColors.ubuntuStudioBlue);

  /// Xubuntu
  static const xubuntuBlue = YaruVariant._('xubuntu', FlavorColors.xubuntuBlue);

  /// Available Yaru variants.
  static const List<YaruVariant> values = [
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
    kubuntuBlue,
    lubuntuBlue,
    ubuntuBudgieBlue,
    ubuntuMateGreen,
    ubuntuStudioBlue,
    xubuntuBlue,
  ];
}

ThemeData getYaruLightTheme(YaruVariant accent) {
  return _yaruLightThemes[accent] ?? yaruLight;
}

ThemeData getYaruDarkTheme(YaruVariant accent) {
  return _yaruDarkThemes[accent] ?? yaruDark;
}

final _yaruLightThemes = <YaruVariant, ThemeData>{
  YaruVariant.orange: yaruLight,
  YaruVariant.bark: yaruBarkLight,
  YaruVariant.sage: yaruSageLight,
  YaruVariant.olive: yaruOliveLight,
  YaruVariant.viridian: yaruViridianLight,
  YaruVariant.prussianGreen: yaruPrussianGreenLight,
  YaruVariant.blue: yaruBlueLight,
  YaruVariant.purple: yaruPurpleLight,
  YaruVariant.magenta: yaruMagentaLight,
  YaruVariant.red: yaruRedLight,
  YaruVariant.kubuntuBlue: yaruKubuntuLight,
  YaruVariant.lubuntuBlue: yaruLubuntuLight,
  YaruVariant.ubuntuBudgieBlue: yaruUbuntuBudgieLight,
  YaruVariant.ubuntuMateGreen: yaruMateLight,
  YaruVariant.ubuntuStudioBlue: yaruUbuntuStudioLight,
  YaruVariant.xubuntuBlue: yaruXubuntuLight,
};

final _yaruDarkThemes = <YaruVariant, ThemeData>{
  YaruVariant.orange: yaruDark,
  YaruVariant.bark: yaruBarkDark,
  YaruVariant.sage: yaruSageDark,
  YaruVariant.olive: yaruOliveDark,
  YaruVariant.viridian: yaruViridianDark,
  YaruVariant.prussianGreen: yaruPrussianGreenDark,
  YaruVariant.blue: yaruBlueDark,
  YaruVariant.purple: yaruPurpleDark,
  YaruVariant.magenta: yaruMagentaDark,
  YaruVariant.red: yaruRedDark,
  YaruVariant.kubuntuBlue: yaruKubuntuDark,
  YaruVariant.lubuntuBlue: yaruLubuntuDark,
  YaruVariant.ubuntuBudgieBlue: yaruUbuntuBudgieDark,
  YaruVariant.ubuntuMateGreen: yaruMateDark,
  YaruVariant.ubuntuStudioBlue: yaruUbuntuStudioDark,
  YaruVariant.xubuntuBlue: yaruXubuntuDark,
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
