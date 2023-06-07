import 'package:flutter/material.dart';

/// Available Yaru colors.
class YaruColors {
  YaruColors._();

  /// Ubuntu Orange
  static const Color orange = Color(0xFFE95420);

  /// Warm Grey
  ///
  /// For balance. The addition of warm grey softens the combination of orange
  /// and aubergine and provides a bridge between the two.
  ///
  /// Warm grey can be used for; backgrounds, graphics, dot patterns, charts and
  /// diagrams. It can also be used for large size text.
  static const Color warmGrey = Color(0xFFAEA79F);

  /// Cool Grey
  ///
  /// For typography, particularly body copy. Black can be quite harsh in
  /// combination with aubergine, but grey delivers more balance while still
  /// being legible.
  ///
  /// Cool grey can also be used within charts and diagrams.
  static const Color coolGrey = Color(0xFF333333);

  /// Text Grey
  ///
  /// Text grey is used for small size headings, sub-headings and body copy text
  /// only.
  static const Color textGrey = Color(0xFF111111);

  @Deprecated('Use YaruColorScheme.error instead.')
  static const Color error = Color(0xFFff0000);

  @Deprecated('Use YaruColorScheme.error instead.')
  static const Color errorLight = Color(0xFFE86581); // YaruColors.red[300]

  @Deprecated('Use YaruColorScheme.error instead.')
  static const Color errorDark = Color(0xFFB52A4A); // YaruColors.red[700]

  @Deprecated('Use YaruColorScheme.warning instead.')
  static const Color warning = Color(0xFFf99b11);

  @Deprecated('Use YaruColorScheme.success instead.')
  static const Color success = Color(0xFF0e8420);

  /// Porcelain
  static const Color porcelain = Color(0xFFFAFAFA);

  /// Inkstone
  static const Color inkstone = Color(0xFF3B3B3B);

  /// Jet
  static const Color jet = Color(0xFF2B2B2B);

  /// Light title bar
  static const Color titleBarLight = Color(0xFFEBEBEB);

  /// Dark title bar
  static const Color titleBarDark = Color(0xFF303030);

  @Deprecated('Use YaruColorScheme.link instead.')
  static const Color linkLight = Color(0xFF0094FF); // YaruColors.blue[500]

  @Deprecated('Use YaruColorScheme.link instead.')
  static const Color linkDark = Color(0xFF0073E5); // YaruColors.blue[700]

  /// Olive
  static const Color olive = Color(0xFF4B8501);

  /// Bark
  static const Color bark = Color(0xFF787859);

  /// Sage
  static const Color sage = Color(0xFF657B69);

  /// Prussian Green
  static const Color prussianGreen = Color(0xFF308280);

  /// Viridian
  static const Color viridian = Color(0xFF03875B);

  /// Purple
  static const Color purple = Color(0xFF7764D8);

  /// Red
  static const Color red = Color(0xFFDA3450);

  /// Blue
  static const Color blue = Color(0xFF0073E5);

  /// Magenta
  static const Color magenta = Color(0xFFB34CB3);

  /// Kubuntu Blue
  static const Color kubuntuBlue = Color(0xFF0079C1);

  /// Lubuntu Blue
  static const Color lubuntuBlue = Color(0xFF0068C8);

  /// Ubuntu Budgie Blue
  static const Color ubuntuBudgieBlue = Color(0xFF2196F3);

  /// Ubuntu Butterfly Pink
  static const Color ubuntuButterflyPink = Color(0xFFFF135B);

  /// Ubuntu Cinnamon Brown
  static const Color ubuntuCinnamonBrown = Color(0xFFDD682A);

  /// Ubuntu MATE Green
  static const Color ubuntuMateGreen = Color(0xFF73AF59);

  /// Ubuntu Studio Blue
  static const Color ubuntuStudioBlue = Color(0xFF009BF9);

  /// Ubuntu Unity Purple
  static const Color ubuntuUnityPurple = Color(0xFF9005D5);

  /// Xubuntu Blue
  static const Color xubuntuBlue = Color(0xFF0044AA);
}

/// Yaru color scheme.
class YaruColorScheme {
  /// Creates a color scheme with the given colors.
  const YaruColorScheme({
    required this.error,
    required this.success,
    required this.warning,
    required this.link,
  });

  /// Error color
  final Color error;

  /// Success color
  final Color success;

  /// Warning color
  final Color warning;

  /// Link color
  final Color link;

  /// Color scheme for a light theme.
  static const light = YaruColorScheme(
    error: Color(0xFFB52A4A), // YaruColors.red[700],
    success: Color(0xFF0e8420),
    warning: Color(0xFFf99b11),
    link: Color(0xFF0073E5), // YaruColors.blue[700],
  );

  /// Color scheme for a dark theme.
  static const dark = YaruColorScheme(
    error: Color(0xFFE86581), // YaruColors.red[300]
    success: Color(0xFF0e8420),
    warning: Color(0xFFf99b11),
    link: Color(0xFF0094FF), // YaruColors.blue[500]
  );

  /// Color scheme from the given [brightness].
  factory YaruColorScheme.from(Brightness brightness) {
    return switch (brightness) {
      Brightness.light => YaruColorScheme.light,
      Brightness.dark => YaruColorScheme.dark,
    };
  }

  /// Color scheme for the given [context].
  static YaruColorScheme of(BuildContext context) {
    return YaruColorScheme.from(Theme.of(context).brightness);
  }
}

/// Set of useful methods when working with [Color]
extension YaruColorExtension on Color {
  /// Scale color attributes relatively to current ones.
  /// [alpha], [hue], [saturation] and [lightness] values must be clamped between -1.0 and 1.0
  Color scale({
    double alpha = 0.0,
    double hue = 0.0,
    double saturation = 0.0,
    double lightness = 0.0,
  }) {
    assert(alpha >= -1.0 && alpha <= 1.0);
    assert(hue >= -1.0 && hue <= 1.0);
    assert(saturation >= -1.0 && saturation <= 1.0);
    assert(lightness >= -1.0 && lightness <= 1.0);

    final hslColor = _getPatchedHslColor();

    double scale(double value, double amount, [double upperLimit = 1.0]) {
      var result = value;

      if (amount > 0) {
        result = value + (upperLimit - value) * amount;
      } else if (amount < 0) {
        result = value + value * amount;
      }

      return result.clamp(0.0, upperLimit);
    }

    return hslColor
        .withAlpha(scale(opacity, alpha))
        .withHue(scale(hslColor.hue, hue, 360.0))
        .withSaturation(scale(hslColor.saturation, saturation))
        .withLightness(scale(hslColor.lightness, lightness))
        .toColor();
  }

  /// Adjust color attributes by the given values.
  /// [alpha], [saturation] and [lightness] values must be clamped between -1.0 and 1.0
  /// [hue] value must be clamped between -360.0 and 360.0
  Color adjust({
    double alpha = 0.0,
    double hue = 0.0,
    double saturation = 0.0,
    double lightness = 0.0,
  }) {
    assert(alpha >= -1.0 && alpha <= 1.0);
    assert(hue >= -360.0 && hue <= 360.0);
    assert(saturation >= -1.0 && saturation <= 1.0);
    assert(lightness >= -1.0 && lightness <= 1.0);

    final hslColor = _getPatchedHslColor();

    double adjust(double value, double amount, [double upperLimit = 1.0]) {
      return (value + amount).clamp(0.0, upperLimit);
    }

    return hslColor
        .withAlpha(adjust(hslColor.alpha, alpha))
        .withHue(adjust(hslColor.hue, hue, 360.0))
        .withSaturation(adjust(hslColor.saturation, saturation))
        .withLightness(adjust(hslColor.lightness, lightness))
        .toColor();
  }

  /// Return a copy of this color with attributes replaced by given values.
  /// [alpha], [saturation] and [lightness] values must be clamped between 0.0 and 1.0
  /// [hue] value must be clamped between 0.0 and 360.0
  Color copyWith({
    double? alpha,
    double? hue,
    double? saturation,
    double? lightness,
  }) {
    assert(alpha == null || (alpha >= 0.0 && alpha <= 1.0));
    assert(hue == null || (hue >= 0.0 && hue <= 360.0));
    assert(saturation == null || (saturation >= 0.0 && saturation <= 1.0));
    assert(lightness == null || (lightness >= 0.0 && lightness <= 1.0));

    final hslColor = _getPatchedHslColor();

    return hslColor
        .withAlpha(alpha ?? hslColor.alpha)
        .withHue(hue ?? hslColor.hue)
        .withSaturation(saturation ?? hslColor.saturation)
        .withLightness(lightness ?? hslColor.lightness)
        .toColor();
  }

  HSLColor _getPatchedHslColor() {
    final hslColor = HSLColor.fromColor(this);

    // A pure dark color have saturation level at 1.0, which results in red when lighten it.
    // We reset this value to 0.0, so the result is desaturated as expected:
    return hslColor
        .withSaturation(hslColor.lightness == 0.0 ? 0.0 : hslColor.saturation);
  }
}
