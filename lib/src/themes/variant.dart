import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/kubuntu.dart';
import 'package:yaru/src/themes/yaru.dart';
import 'package:yaru/src/themes/lubuntu.dart';
import 'package:yaru/src/themes/ubuntu_budgie.dart';
import 'package:yaru/src/themes/ubuntu_mate.dart';
import 'package:yaru/src/themes/ubuntu_studio.dart';
import 'package:yaru/src/themes/xubuntu.dart';

/// Describes a Yaru variant and its primary color.
class YaruVariant {
  const YaruVariant._(this.name, this.color);

  /// The name of the variant.
  final String name;

  /// The primary color of the variant.
  final MaterialColor color;

  /// A light theme for the variant.
  ThemeData get theme => _yaruLightThemes[this]!;

  /// A dark theme for the variant.
  ThemeData get darkTheme => _yaruDarkThemes[this]!;

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
  YaruVariant.ubuntuMateGreen: yaruUbuntuMateLight,
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
  YaruVariant.ubuntuMateGreen: yaruUbuntuMateDark,
  YaruVariant.ubuntuStudioBlue: yaruUbuntuStudioDark,
  YaruVariant.xubuntuBlue: yaruXubuntuDark,
};
