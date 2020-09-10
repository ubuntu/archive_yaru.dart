library yaru;

import 'dart:ui';
import 'package:flutter/material.dart';

// Ubuntu color palette
// https://design.ubuntu.com/brand/colour-palette/
final yaruUbuntuOrange = Color(0xFFE95420);
final yaruWhite = Color(0xFFFFFFFF);
final yaruBlack = Color(0xFF000000);
final yaruLightAubergine = Color(0xFF77216F);
final yaruMidAubergine = Color(0xFF5E2750);
final yaruDarkAubergine = Color(0xFF2C001E);
final yaruWarmGrey = Color(0xFFAEA79F);
final yaruCoolGrey = Color(0xFF333333);
final yaruTextGrey = Color(0xFF111111);
final yaruCanonicalAubergine = Color(0xFF772953);

final yaruErrorColor = Color(0xFFFF0000);

final yaruLightColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: MaterialColor(yaruUbuntuOrange.value, {
      50: Color(0xFFFDEEE9),
      100: Color(0xFFFBDDD2),
      200: Color(0xFFF6BBA6),
      300: Color(0xFFF29879),
      400: Color(0xFFED764D),
      500: yaruUbuntuOrange,
      600: Color(0xFFBA431A),
      700: Color(0xFF8C3213),
      800: Color(0xFF5D220D),
      900: Color(0xFF2F1106),
    }),
    primaryColorDark: yaruCoolGrey,
    accentColor: yaruUbuntuOrange,
    cardColor: yaruWhite,
    backgroundColor: yaruWhite,
    errorColor: yaruErrorColor,
    brightness: Brightness.light);

final yaruDarkColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: MaterialColor(yaruUbuntuOrange.value, {
      50: Color(0xFFFDEEE9),
      100: Color(0xFFFBDDD2),
      200: Color(0xFFF6BBA6),
      300: Color(0xFFF29879),
      400: Color(0xFFED764D),
      500: yaruUbuntuOrange,
      600: Color(0xFFBA431A),
      700: Color(0xFF8C3213),
      800: Color(0xFF5D220D),
      900: Color(0xFF2F1106),
    }),
    primaryColorDark: yaruCoolGrey,
    accentColor: yaruUbuntuOrange,
    cardColor: yaruCoolGrey,
    backgroundColor: yaruCoolGrey,
    errorColor: yaruErrorColor,
    brightness: Brightness.dark);

final yaruHeadline1Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruHeadline2Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruHeadline3Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruHeadline4Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruHeadline5Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruHeadline6Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruSubtitle1Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruSubtitle2Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruBodyText1Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruBodyText2Style = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruCaptionStyle = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruButtonStyle = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');
final yaruOverlineStyle = TextStyle(fontFamily: 'Ubuntu', package: 'yaru');

final yaruTextTheme = TextTheme(
    headline1: yaruHeadline1Style,
    headline2: yaruHeadline2Style,
    headline3: yaruHeadline3Style,
    headline4: yaruHeadline4Style,
    headline5: yaruHeadline5Style,
    headline6: yaruHeadline6Style,
    subtitle1: yaruSubtitle1Style,
    subtitle2: yaruSubtitle2Style,
    bodyText1: yaruBodyText1Style,
    bodyText2: yaruBodyText2Style,
    caption: yaruCaptionStyle,
    button: yaruButtonStyle,
    overline: yaruOverlineStyle);

final yaruButtonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)));

final yaruAppBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: yaruWarmGrey,
);

final yaruAppBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: yaruCoolGrey,
);

final yaruLightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: yaruLightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(yaruLightColorScheme.primary),
    canvasColor: yaruLightColorScheme.background,
    accentColor: yaruLightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(yaruLightColorScheme.secondary),
    scaffoldBackgroundColor: yaruLightColorScheme.background,
    bottomAppBarColor: yaruLightColorScheme.surface,
    cardColor: yaruLightColorScheme.surface,
    dividerColor: yaruLightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: yaruLightColorScheme.background,
    dialogBackgroundColor: yaruLightColorScheme.background,
    errorColor: yaruLightColorScheme.error,
    textTheme: yaruTextTheme,
    indicatorColor: yaruLightColorScheme.onPrimary,
    applyElevationOverlayColor: false,
    colorScheme: yaruLightColorScheme,
    buttonTheme: yaruButtonThemeData,
    appBarTheme: yaruAppBarLightTheme);

final yaruDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: yaruDarkColorScheme.surface,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(yaruDarkColorScheme.surface),
    canvasColor: yaruDarkColorScheme.background,
    accentColor: yaruDarkColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(yaruDarkColorScheme.secondary),
    scaffoldBackgroundColor: yaruDarkColorScheme.background,
    bottomAppBarColor: yaruDarkColorScheme.surface,
    cardColor: yaruDarkColorScheme.surface,
    dividerColor: yaruDarkColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: yaruDarkColorScheme.background,
    dialogBackgroundColor: yaruDarkColorScheme.background,
    errorColor: yaruDarkColorScheme.error,
    textTheme: yaruTextTheme,
    indicatorColor: yaruDarkColorScheme.onPrimary,
    applyElevationOverlayColor: true,
    colorScheme: yaruDarkColorScheme,
    buttonTheme: yaruButtonThemeData,
    appBarTheme: yaruAppBarDarkTheme);
