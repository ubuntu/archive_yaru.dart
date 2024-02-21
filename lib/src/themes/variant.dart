import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:platform/platform.dart';
import 'package:yaru/src/colors.dart';
import 'package:yaru/src/themes/kubuntu.dart';
import 'package:yaru/src/themes/lubuntu.dart';
import 'package:yaru/src/themes/ubuntu_budgie.dart';
import 'package:yaru/src/themes/ubuntu_butterfly.dart';
import 'package:yaru/src/themes/ubuntu_cinnamon.dart';
import 'package:yaru/src/themes/ubuntu_mate.dart';
import 'package:yaru/src/themes/ubuntu_studio.dart';
import 'package:yaru/src/themes/ubuntu_unity.dart';
import 'package:yaru/src/themes/xubuntu.dart';
import 'package:yaru/src/themes/yaru.dart';

/// Describes a Yaru variant and its primary color.
enum YaruVariant {
  orange(YaruColors.orange),
  bark(YaruColors.bark),
  sage(YaruColors.sage),
  olive(YaruColors.olive),
  viridian(YaruColors.viridian),
  prussianGreen(YaruColors.prussianGreen),
  blue(YaruColors.blue),
  purple(YaruColors.purple),
  magenta(YaruColors.magenta),
  red(YaruColors.red),

  /// Kubuntu
  kubuntuBlue(YaruColors.kubuntuBlue),

  /// Lubuntu
  lubuntuBlue(YaruColors.lubuntuBlue),

  /// Ubuntu Budgie
  ubuntuBudgieBlue(YaruColors.ubuntuBudgieBlue),

  /// Ubuntu Butterfly
  ubuntuButterflyPink(YaruColors.ubuntuButterflyPink),

  /// Ubuntu Cinnamon Remix
  ubuntuCinnamonBrown(YaruColors.ubuntuCinnamonBrown),

  /// Ubuntu MATE
  ubuntuMateGreen(YaruColors.ubuntuMateGreen),

  /// Ubuntu Studio
  ubuntuStudioBlue(YaruColors.ubuntuStudioBlue),

  /// Ubuntu Unity
  ubuntuUnityPurple(YaruColors.ubuntuUnityPurple),

  /// Xubuntu
  xubuntuBlue(YaruColors.xubuntuBlue);

  const YaruVariant(this.color);

  /// The primary color of the variant.
  final Color color;

  /// A light theme for the variant.
  ThemeData get theme => _yaruLightThemes[this]!;

  /// A dark theme for the variant.
  ThemeData get darkTheme => _yaruDarkThemes[this]!;

  /// The available accent color variants excluding Ubuntu flavors.
  static const List<YaruVariant> accents = [
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
  ];

  static YaruVariant? _detect(Platform platform) {
    final desktop = !kIsWeb
        ? platform.environment['XDG_CURRENT_DESKTOP']?.toUpperCase()
        : null;

    if (desktop == null) {
      return null;
    }

    if (desktop.contains('BUDGIE')) return YaruVariant.ubuntuBudgieBlue;
    if (desktop.contains('CINNAMON')) return YaruVariant.ubuntuCinnamonBrown;
    if (desktop.contains('GNOME')) return YaruVariant.orange;
    if (desktop.contains('KDE')) return YaruVariant.kubuntuBlue;
    if (desktop.contains('LXQT')) return YaruVariant.lubuntuBlue;
    if (desktop.contains('MATE')) return YaruVariant.ubuntuMateGreen;
    if (desktop.contains('UNITY')) return YaruVariant.ubuntuUnityPurple;
    if (desktop.contains('XFCE')) return YaruVariant.xubuntuBlue;

    return null;
  }

  static YaruVariant? resolve({required Platform platform, String? name}) {
    if (name?.endsWith('-dark') == true) {
      name = name!.substring(0, name.length - 5);
    }

    if (name?.startsWith('Yaru-') == true) {
      name = name!.substring(5);
    }

    if (name == 'Yaru') {
      return YaruVariant.orange;
    }

    for (final value in YaruVariant.values) {
      if (value.name.toLowerCase() == name?.toLowerCase()) {
        return value;
      }
    }

    return _detect(platform);
  }
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
  YaruVariant.ubuntuButterflyPink: yaruUbuntuButterflyLight,
  YaruVariant.ubuntuCinnamonBrown: yaruUbuntuCinnamonLight,
  YaruVariant.ubuntuMateGreen: yaruUbuntuMateLight,
  YaruVariant.ubuntuStudioBlue: yaruUbuntuStudioLight,
  YaruVariant.ubuntuUnityPurple: yaruUbuntuUnityLight,
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
  YaruVariant.ubuntuButterflyPink: yaruUbuntuButterflyDark,
  YaruVariant.ubuntuCinnamonBrown: yaruUbuntuCinnamonDark,
  YaruVariant.ubuntuMateGreen: yaruUbuntuMateDark,
  YaruVariant.ubuntuStudioBlue: yaruUbuntuStudioDark,
  YaruVariant.ubuntuUnityPurple: yaruUbuntuUnityDark,
  YaruVariant.xubuntuBlue: yaruXubuntuDark,
};
