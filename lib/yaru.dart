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

final yaruColorScheme = ColorScheme.fromSwatch(
    primarySwatch: MaterialColor(yaruUbuntuOrange.value, {
      50: yaruUbuntuOrange,
      100: yaruUbuntuOrange,
      200: yaruUbuntuOrange,
      300: yaruUbuntuOrange,
      400: yaruUbuntuOrange,
      500: yaruUbuntuOrange,
      600: yaruUbuntuOrange,
      700: yaruUbuntuOrange,
      800: yaruUbuntuOrange,
      900: yaruUbuntuOrange
    }),
    primaryColorDark: yaruCoolGrey,
    accentColor: yaruUbuntuOrange,
    cardColor: yaruWhite,
    backgroundColor: yaruWhite,
    errorColor: yaruUbuntuOrange,
    brightness: Brightness.light);

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

ThemeData get yaruTheme {
  var yaru =
      ThemeData.from(colorScheme: yaruColorScheme, textTheme: yaruTextTheme);
  return yaru;
}
