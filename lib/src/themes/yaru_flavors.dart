import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/colors/flavor_colors.dart';

/// Describes a Yaru flavor and its primary color.
class YaruFlavor {
  const YaruFlavor._(this.name, this.color);

  /// The name of the flavor.
  final String name;

  /// The primary color of the flavor.
  final MaterialColor color;

  /// Ubuntu Budgie
  static const budgie = YaruFlavor._('budgie', FlavorColors.ubuntuBudgieBlue);

  /// Kubuntu
  static const kubuntu = YaruFlavor._('kubuntu', FlavorColors.kubuntuBlue);

  /// Lubuntu
  static const lubuntu = YaruFlavor._('lubuntu', FlavorColors.lubuntuBlue);

  /// Ubuntu MATE
  static const mate = YaruFlavor._('mate', FlavorColors.ubuntuMateGreen);

  /// Ubuntu Studio
  static const studio = YaruFlavor._('studio', FlavorColors.ubuntuStudioBlue);

  /// Ubuntu
  ///
  /// **Note**: Ubuntu supports multiple accent colors. See [YaruAccent].
  static const ubuntu = YaruFlavor._('ubuntu', YaruColors.ubuntuOrange);

  /// Xubuntu
  static const xubuntu = YaruFlavor._('xubuntu', FlavorColors.xubuntuBlue);

  /// Available Yaru flavors.
  static const List<YaruFlavor> values = [
    budgie,
    kubuntu,
    lubuntu,
    mate,
    studio,
    ubuntu,
    xubuntu,
  ];
}
