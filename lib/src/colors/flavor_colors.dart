import 'package:flutter/material.dart' show Color, MaterialColor;

class FlavorColors {
  FlavorColors._();

  // Kubuntu
  static const _kubuntuBluePrimaryValue = 0xFF0079C1;
  static const kubuntuBlue =
      MaterialColor(_kubuntuBluePrimaryValue, <int, Color>{
    50: Color(0xFF80BCE0),
    100: Color(0xFF66AFDA),
    200: Color(0xFF4DA1D4),
    300: Color(0xFF3394CD),
    400: Color(0xFF1A86C7),
    500: Color(_kubuntuBluePrimaryValue),
  });

  // Lubuntu
  static const _lubuntuBluePrimaryValue = 0xFF0068c8;
  static const lubuntuBlue =
      MaterialColor(_lubuntuBluePrimaryValue, <int, Color>{
    50: Color(0xFF80b4e4),
    100: Color(0xFF66a4de),
    200: Color(0xFF4d95d9),
    300: Color(0xFF3386d3),
    400: Color(0xFF1a77ce),
    500: Color(_lubuntuBluePrimaryValue)
  });

  // Ubuntu Budgie
  static const _ubuntuBudgieGrayPrimaryValue = 0xFF404522;
  static const ubuntuBudgieGray =
      MaterialColor(_ubuntuBudgieGrayPrimaryValue, <int, Color>{
    50: Color(0xFF8c8f7a),
    100: Color(0xFF797d64),
    200: Color(0xFF666a4e),
    300: Color(0xFF535838),
    400: Color(0xFF535838),
    500: Color(_ubuntuBudgieGrayPrimaryValue)
  });

  // Ubuntu MATE
  static const _ubuntuMATEGreenPrimaryValue = 0xFF73AF59;
  static const ubuntuMATEGreen =
      MaterialColor(_ubuntuMATEGreenPrimaryValue, <int, Color>{
    50: Color(0xFFb9d7ac),
    100: Color(0xFFabcf9b),
    200: Color(0xFF9dc78b),
    300: Color(0xFF8fbf7a),
    400: Color(0xFF81b76a),
    500: Color(_ubuntuMATEGreenPrimaryValue),
    600: Color(0xFF689e50),
    700: Color(0xFF5c8c47),
    800: Color(0xFF517a3e),
    900: Color(0xFF456935),
  });

  // Ubuntu Studio Blue
  static const _ubuntuStudioBluePrimaryValue = 0xFF009BF9;
  static const ubuntuStudioBlue =
      MaterialColor(_ubuntuStudioBluePrimaryValue, <int, Color>{
    50: Color(0xFF66c3fb),
    100: Color(0xFF66c3fb),
    200: Color(0xFF4db9fb),
    300: Color(0xFF33affa),
    400: Color(0xFF1aa5fa),
    500: Color(_ubuntuStudioBluePrimaryValue)
  });

  // Xubuntu Blue
  static const _xubuntuBluePrimaryValue = 0xFF0044AA;
  static const xubuntuBlue =
      MaterialColor(_xubuntuBluePrimaryValue, <int, Color>{
    50: Color(0xFF80a2d5),
    100: Color(0xFF668fcc),
    200: Color(0xFF4d7cc4),
    300: Color(0xFF3369bb),
    400: Color(0xFF1a57b3),
    500: Color(_xubuntuBluePrimaryValue)
  });
}
