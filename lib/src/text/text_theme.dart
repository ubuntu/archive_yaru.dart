import 'package:flutter/material.dart';

const textTheme = TextTheme(
  displayLarge: _UbuntuTextStyle(
    fontSize: 96,
    letterSpacing: -1.5,
    fontWeight: FontWeight.w300,
  ),
  displayMedium: _UbuntuTextStyle(
    fontSize: 60,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w300,
  ),
  displaySmall: _UbuntuTextStyle(
    fontSize: 48,
    fontWeight: FontWeight.normal,
  ),
  headlineMedium: _UbuntuTextStyle(
    fontSize: 34,
    fontWeight: FontWeight.normal,
  ),
  headlineSmall: _UbuntuTextStyle(
    fontSize: 24,
    letterSpacing: -0.18,
    fontWeight: FontWeight.normal,
  ),
  titleLarge: _UbuntuTextStyle(
    fontSize: 20,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: _UbuntuTextStyle(
    fontSize: 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.normal,
  ),
  titleSmall: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
  ),
  bodyLarge: _UbuntuTextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.normal,
  ),
  bodyMedium: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.normal,
  ),
  labelLarge: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w500,
  ),
  bodySmall: _UbuntuTextStyle(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.normal,
  ),
  labelSmall: _UbuntuTextStyle(
    fontSize: 10,
    letterSpacing: 1.5,
    fontWeight: FontWeight.normal,
  ),
);

class _UbuntuTextStyle extends TextStyle {
  const _UbuntuTextStyle({
    super.fontSize,
    super.letterSpacing,
    super.fontWeight,
  }) : super(
          fontFamily: 'Ubuntu',
          package: 'yaru',
        );
}
