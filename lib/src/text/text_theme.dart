import 'package:flutter/material.dart';

TextTheme createTextTheme(Color textColor) {
  return TextTheme(
    displayLarge: _UbuntuTextStyle(
      fontSize: 96,
      letterSpacing: -1.5,
      fontWeight: FontWeight.w300,
      textColor: textColor,
    ),
    displayMedium: _UbuntuTextStyle(
      fontSize: 60,
      letterSpacing: -0.5,
      fontWeight: FontWeight.w300,
      textColor: textColor,
    ),
    displaySmall: _UbuntuTextStyle(
      fontSize: 48,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    headlineMedium: _UbuntuTextStyle(
      fontSize: 34,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    headlineSmall: _UbuntuTextStyle(
      fontSize: 24,
      letterSpacing: -0.18,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    titleLarge: _UbuntuTextStyle(
      fontSize: 20,
      letterSpacing: 0.15,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    titleMedium: _UbuntuTextStyle(
      fontSize: 16,
      letterSpacing: 0.15,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    titleSmall: _UbuntuTextStyle(
      fontSize: 14,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    bodyLarge: _UbuntuTextStyle(
      fontSize: 16,
      letterSpacing: 0.5,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    bodyMedium: _UbuntuTextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    labelLarge: _UbuntuTextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    bodySmall: _UbuntuTextStyle(
      fontSize: 12,
      letterSpacing: 0.4,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    labelSmall: _UbuntuTextStyle(
      fontSize: 10,
      letterSpacing: 1.5,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
  );
}

class _UbuntuTextStyle extends TextStyle {
  final Color textColor;
  const _UbuntuTextStyle({
    super.fontSize,
    super.letterSpacing,
    super.fontWeight,
    required this.textColor,
  }) : super(
          fontFamily: 'Ubuntu',
          package: 'yaru',
          color: textColor,
        );
}
