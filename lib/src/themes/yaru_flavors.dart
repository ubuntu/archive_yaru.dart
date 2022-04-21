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

  /// Kubuntu
  static const kubuntu = YaruFlavor._('kubuntu', FlavorColors.kubuntuBlue);

  /// Lubuntu
  static const lubuntu = YaruFlavor._('lubuntu', FlavorColors.lubuntuBlue);

  /// Ubuntu
  ///
  /// **Note**: Ubuntu supports multiple accent colors. See [YaruAccent].
  static const ubuntu = YaruFlavor._('ubuntu', YaruColors.ubuntuOrange);

  /// Ubuntu Budgie
  static const ubuntuBudgie =
      YaruFlavor._('ubuntuBudgie', FlavorColors.ubuntuBudgieBlue);

  /// Ubuntu MATE
  static const ubuntuMate =
      YaruFlavor._('ubuntuMate', FlavorColors.ubuntuMateGreen);

  /// Ubuntu Studio
  static const ubuntuStudio =
      YaruFlavor._('ubuntuStudio', FlavorColors.ubuntuStudioBlue);

  /// Xubuntu
  static const xubuntu = YaruFlavor._('xubuntu', FlavorColors.xubuntuBlue);

  /// Available Yaru flavors.
  static const List<YaruFlavor> values = [
    kubuntu,
    lubuntu,
    ubuntu,
    ubuntuMate,
    ubuntuBudgie,
    ubuntuStudio,
    xubuntu,
  ];
}
