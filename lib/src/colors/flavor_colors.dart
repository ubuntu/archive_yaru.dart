import 'package:flutter/material.dart' show Color, MaterialColor;

class FlavorColors {
  FlavorColors._();

  // Kubuntu
  static const _kubuntuBluePrimaryValue = 0xFF0079C1;
  static const kubuntuBlue = MaterialColor(_kubuntuBluePrimaryValue, {
    50: Color(0xFFE1F6FE),
    100: Color(0xFFB4E6FD),
    200: Color(0xFF82D6FC),
    300: Color(0xFF50C6FA),
    400: Color(0xFF29B9F9),
    500: Color(0xFF01ADF8),
    600: Color(0xFF009EE9),
    700: Color(0xFF008BD5),
    800: Color(_kubuntuBluePrimaryValue),
    900: Color(0xFF005A9F),
  });

  // Lubuntu
  static const _lubuntuBluePrimaryValue = 0xFF0068C8;
  static const lubuntuBlue = MaterialColor(_lubuntuBluePrimaryValue, {
    50: Color(0xFFE3F2FE),
    100: Color(0xFFBBDFFD),
    200: Color(0xFF8ECCFD),
    300: Color(0xFF60B7FC),
    400: Color(0xFF39A8FC),
    500: Color(0xFF0499FB),
    600: Color(0xFF048BED),
    700: Color(0xFF0178DA),
    800: Color(_lubuntuBluePrimaryValue),
    900: Color(0xFF0049A9),
  });

  // Ubuntu Budgie
  static const _ubuntuBudgieBluePrimaryValue = 0xFF2196F3;
  static const ubuntuBudgieBlue = MaterialColor(_ubuntuBudgieBluePrimaryValue, {
    50: Color(0xFFE3F2FD),
    100: Color(0xFFBBDEFB),
    200: Color(0xFF90C9F9),
    300: Color(0xFF63B4F6),
    400: Color(0xFF42A4F5),
    500: Color(_ubuntuBudgieBluePrimaryValue),
    600: Color(0xFF1F87E5),
    700: Color(0xFF1A75D2),
    800: Color(0xFF1764C0),
    900: Color(0xFF1045A1),
  });

  // Ubuntu MATE
  static const _ubuntuMateGreenPrimaryValue = 0xFF73AF59;
  static const ubuntuMateGreen = MaterialColor(_ubuntuMateGreenPrimaryValue, {
    50: Color(0xFFEFF8EB),
    100: Color(0xFFD8ECCE),
    200: Color(0xFFBEDFAE),
    300: Color(0xFFA5D28F),
    400: Color(0xFF92C978),
    500: Color(0xFF80BF62),
    600: Color(_ubuntuMateGreenPrimaryValue),
    700: Color(0xFF619B4E),
    800: Color(0xFF508745),
    900: Color(0xFF346433),
  });

  // Ubuntu Studio Blue
  static const _ubuntuStudioBluePrimaryValue = 0xFF009BF9;
  static const ubuntuStudioBlue = MaterialColor(_ubuntuStudioBluePrimaryValue, {
    50: Color(0xFFE3F3FE),
    100: Color(0xFFBADFFD),
    200: Color(0xFF8ECCFC),
    300: Color(0xFF60B8FA),
    400: Color(0xFF39A8FA),
    500: Color(_ubuntuStudioBluePrimaryValue),
    600: Color(0xFF008BEB),
    700: Color(0xFF0079D8),
    800: Color(0xFF0068C6),
    900: Color(0xFF004AA7),
  });

  // Xubuntu Blue
  static const _xubuntuBluePrimaryValue = 0xFF0044AA;
  static const xubuntuBlue = MaterialColor(_xubuntuBluePrimaryValue, {
    50: Color(0xFFE2F2FE),
    100: Color(0xFFBADEFE),
    200: Color(0xFF8CC9FE),
    300: Color(0xFF5CB4FD),
    400: Color(0xFF33A4FE),
    500: Color(0xFF0094FD),
    600: Color(0xFF0086EE),
    700: Color(0xFF0074DB),
    800: Color(0xFF0063C9),
    900: Color(_xubuntuBluePrimaryValue),
  });
}
