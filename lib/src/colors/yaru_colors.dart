import 'package:flutter/material.dart' show Color, MaterialColor;

/// The Ubuntu color palette
/// [](https://design.ubuntu.com/brand/colour-palette)
class YaruColors {
  YaruColors._();

  static const int _ubuntuOrangePrimaryValue = 0xFFE95420;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/orange.png)
  static const MaterialColor ubuntuOrange =
      MaterialColor(_ubuntuOrangePrimaryValue, {
    50: Color(0xFFFDEEE9),
    100: Color(0xFFFBDDD2),
    200: Color(0xFFF6BBA6),
    300: Color(0xFFF29879),
    400: Color(0xFFED764D),
    500: Color(_ubuntuOrangePrimaryValue),
    600: Color(0xFFBA431A),
    700: Color(0xFF8C3213),
    800: Color(0xFF5D220D),
    900: Color(0xFF2F1106),
  });

  static const int _warmGreyPrimaryValue = 0xFFAEA79F;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/warmGrey.png)
  static const MaterialColor warmGrey = MaterialColor(_warmGreyPrimaryValue, {
    50: Color(0xFFF6F6F5),
    100: Color(0xFFEEEDEB),
    200: Color(0xFFDEDBD8),
    300: Color(0xFFCECAC5),
    400: Color(0xFFBEB8B2),
    500: Color(_warmGreyPrimaryValue),
  });

  static const Color coolGrey = Color(0xFF333333);
  static const Color textGrey = Color(0xFF111111);
  static const Color red = Color(0xFFff0000);
  static const Color yellow = Color(0xFFf99b11);
  static const Color green = Color(0xFF0e8420);
  static const Color disabledGreyDark = Color(0xFF535353);
  static const Color porcelain = Color(0xFFFAFAFA);
  static const Color inkstone = Color(0xFF3B3B3B);
  static const Color jet = Color(0xFF2B2B2B);
  static const olive = Color(0xFF4B8501);
  static const bark = Color(0xFF787859);
  static const viridian = Color(0xFF03875B);
  static const purple = Color(0xFF8856EB);
  static const lightRed = Color(0xFFE61D34);
  static const blue = Color(0xFF0073E5);
  static const magenta = Color(0xFFBC33DB);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
