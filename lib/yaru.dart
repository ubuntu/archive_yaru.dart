library yaru;

import 'dart:ui';
import 'package:flutter/material.dart';

// Ubuntu color palette
// https://design.ubuntu.com/brand/colour-palette/
const yaruUbuntuOrange = Color(0xFFE95420);
const yaruWhite = Color(0xFFFFFFFF);
const yaruBlack = Color(0xFF000000);
const yaruLightAubergine = Color(0xFF77216F);
const yaruMidAubergine = Color(0xFF5E2750);
const yaruDarkAubergine = Color(0xFF2C001E);
const yaruWarmGrey = Color(0xFFAEA79F);
const yaruCoolGrey = Color(0xFF333333);
const yaruTextGrey = Color(0xFF111111);
const yaruCanonicalAubergine = Color(0xFF772953);
const yaruErrorColor = Color(0xFFFF0000);

// more colors, as the canonical palette is not enough
const yaruGreen = Color(0xFF109a26);
const yaruDisabledGreyDark = Color(0xFF535353);
const yaruMidAubergineTransparentized = Color(0xAA5E2750);

const yaruLightColorScheme = ColorScheme.fromSwatch(
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
    accentColor: yaruLightAubergine,
    cardColor: yaruWhite,
    backgroundColor: yaruWhite,
    errorColor: yaruErrorColor,
    brightness: Brightness.light);

const yaruDarkColorScheme = ColorScheme.fromSwatch(
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
    accentColor: yaruLightAubergine,
    cardColor: yaruCoolGrey,
    backgroundColor: yaruCoolGrey,
    errorColor: yaruErrorColor,
    brightness: Brightness.dark);

const _yaruTextStyle = TextStyle(
  fontFamily: 'Ubuntu',
  package: 'yaru',
  fontFamilyFallback: [
    'Liberation Serif',
    'Noto Sans CJK',
    'Tibetan Machine Uni',
  ],
);
const yaruHeadline1Style = _yaruTextStyle;
const yaruHeadline2Style = _yaruTextStyle;
const yaruHeadline3Style = _yaruTextStyle;
const yaruHeadline4Style = _yaruTextStyle;
const yaruHeadline5Style = _yaruTextStyle;
const yaruHeadline6Style = _yaruTextStyle;
const yaruSubtitle1Style = _yaruTextStyle;
const yaruSubtitle2Style = _yaruTextStyle;
const yaruBodyText1Style = _yaruTextStyle;
const yaruBodyText2Style = _yaruTextStyle;
const yaruCaptionStyle = _yaruTextStyle;
const yaruButtonStyle = _yaruTextStyle;
const yaruOverlineStyle = _yaruTextStyle;

const yaruTextTheme = TextTheme(
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

const yaruButtonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)));

const yaruOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: yaruTextGrey));

const yaruDarkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: yaruWhite));

const yaruAppBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: yaruWhite,
  textTheme: yaruTextTheme.copyWith(
      headline6: yaruHeadline6Style.copyWith(
    color: yaruCoolGrey,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  )),
  iconTheme: IconThemeData(color: yaruCoolGrey),
  actionsIconTheme: IconThemeData(color: yaruCoolGrey),
);

const yaruAppBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: yaruCoolGrey,
);

const yaruTheme = ThemeData(
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
    indicatorColor: yaruLightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: yaruLightColorScheme,
    buttonTheme: yaruButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeDataLight,
    outlinedButtonTheme: yaruOutlinedButtonThemeData,
    appBarTheme: yaruAppBarDarkTheme);

const yaruLightTheme = ThemeData(
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
    indicatorColor: yaruLightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: yaruLightColorScheme,
    buttonTheme: yaruButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeDataLight,
    outlinedButtonTheme: yaruOutlinedButtonThemeData,
    appBarTheme: yaruAppBarLightTheme);

const yaruDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: yaruDarkColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(yaruDarkColorScheme.primary),
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
    indicatorColor: yaruDarkColorScheme.secondary,
    applyElevationOverlayColor: true,
    colorScheme: yaruDarkColorScheme,
    buttonTheme: yaruButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeDataDark,
    outlinedButtonTheme: yaruDarkOutlinedButtonThemeData,
    switchTheme: switchStyleDark,
    checkboxTheme: checkStyle,
    radioTheme: radioStyle,
    primaryColorDark: yaruUbuntuOrange,
    appBarTheme: yaruAppBarDarkTheme);

// Special casing some widgets
// That are not catched with the default theming in flutter
// "Green" elevated Buttons
Color getElevatedButtonColorLight(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaruGreen;
  } else if (states.any(disabledStates.contains)) {
    return yaruWarmGrey;
  }
  return yaruGreen;
}

Color getElevatedButtonColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaruGreen;
  } else if (states.any(disabledStates.contains)) {
    return yaruDisabledGreyDark;
  }
  return yaruGreen;
}

const elevatedButtonThemeDataLight = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(getElevatedButtonColorLight)));

const elevatedButtonThemeDataDark = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(getElevatedButtonColorDark)));

// Switches
Color getSwitchThumbColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaruWarmGrey;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaruMidAubergine;
    } else {
      return yaruWhite;
    }
  }
}

Color getSwitchTrackColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaruDisabledGreyDark;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaruMidAubergineTransparentized;
    } else {
      return yaruWarmGrey;
    }
  }
}

const switchStyleDark = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(getSwitchTrackColorDark));

// Checks
Color getCheckFillColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return yaruLightAubergine;
    }
    return yaruWarmGrey;
  }
  return yaruDisabledGreyDark;
}

Color getCheckColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return yaruWhite;
  }
  return yaruWarmGrey;
}

const checkStyle = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith(getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(getCheckColorDark));

// Radios
const radioStyle = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(getCheckFillColorDark));
