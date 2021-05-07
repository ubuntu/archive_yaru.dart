import 'package:flutter/material.dart' show Color, MaterialColor;

/// The Ubuntu color palette
/// [](https://design.ubuntu.com/brand/colour-palette)
class Colors {
  Colors._();

  static const int _orangePrimaryValue = 0xFFE95420;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/orange.png)
  static const MaterialColor orange =
      MaterialColor(_orangePrimaryValue, <int, Color>{
    50: Color(0xFFFDEEE9),
    100: Color(0xFFFBDDD2),
    200: Color(0xFFF6BBA6),
    300: Color(0xFFF29879),
    400: Color(0xFFED764D),
    500: Color(_orangePrimaryValue),
  });

  static const int _lightAuberginePrimaryValue = 0xFF77216F;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/lightAubergine.png)
  static const MaterialColor lightAubergine =
      MaterialColor(_lightAuberginePrimaryValue, <int, Color>{
    50: Color(0xFFF1E8F0),
    100: Color(0xFFE3D2E2),
    200: Color(0xFFC8A6C5),
    300: Color(0xFFAD79A8),
    400: Color(0xFF924D8B),
    500: Color(_lightAuberginePrimaryValue),
  });

  static const int _midAuberginePrimaryValue = 0xFF5E2750;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/midAubergine.png)
  static const MaterialColor midAubergine =
      MaterialColor(_midAuberginePrimaryValue, <int, Color>{
    50: Color(0xFFEEE9ED),
    100: Color(0xFFDED3DC),
    200: Color(0xFFBEA8B9),
    300: Color(0xFF9E7D96),
    400: Color(0xFF7E5273),
    500: Color(_midAuberginePrimaryValue),
  });

  static const int _canonicalAuberginePrimaryValue = 0xFF772953;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/canonicalAubergine.png)
  static const MaterialColor canonicalAubergine =
      MaterialColor(_canonicalAuberginePrimaryValue, <int, Color>{
    50: Color(0xFFF1E9ED),
    100: Color(0xFFE3D4DC),
    200: Color(0xFFC8A9BA),
    300: Color(0xFFAD7E97),
    400: Color(0xFF925375),
    500: Color(_canonicalAuberginePrimaryValue),
  });

  static const int _darkAuberginePrimaryValue = 0xFF2C001E;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/darkAubergine.png)
  static const MaterialColor darkAubergine =
      MaterialColor(_darkAuberginePrimaryValue, <int, Color>{
    50: Color(0xFFE9E5E8),
    100: Color(0xFFD4CCD2),
    200: Color(0xFFAA99A5),
    300: Color(0xFF806678),
    400: Color(0xFF56334B),
    500: Color(_darkAuberginePrimaryValue),
  });

  static const int _warmGreyPrimaryValue = 0xFFAEA79F;

  ///![](https://raw.githubusercontent.com/ubuntu/yaru.dart/main/doc/api/src/utils/colors/warmGrey.png)
  static const MaterialColor warmGrey =
      MaterialColor(_warmGreyPrimaryValue, <int, Color>{
    50: Color(0xFFF6F6F5),
    100: Color(0xFFEEEDEB),
    200: Color(0xFFDEDBD8),
    300: Color(0xFFCECAC5),
    400: Color(0xFFBEB8B2),
    500: Color(_warmGreyPrimaryValue),
  });

  static const Color coolGrey = Color(0xFF333333);
  static const Color textGrey = Color(0xFF111111);
  static const Color red = Color(0xFFCC0000);
  static const Color green = Color(0xFF109a26);
  static const Color disabledGreyDark = Color(0xFF535353);
  static const Color porcelain = Color(0xFFF7F7F7);
  static const Color inkstone = Color(0xFF3B3B3B);
  static const Color jet = Color(0xFF1D1D1D);
}
