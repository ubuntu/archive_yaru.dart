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

// more colors, as the canonical palette is not enough
final yaruGreen = Color(0xFF109a26);
final yaruDisabledGreyDark = Color(0xFF535353);

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
    accentColor: yaruLightAubergine,
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
    accentColor: yaruLightAubergine,
    cardColor: yaruCoolGrey,
    backgroundColor: yaruCoolGrey,
    errorColor: yaruErrorColor,
    brightness: Brightness.dark);

final _yaruTextStyle = TextStyle(
  fontFamily: 'Ubuntu',
  package: 'yaru',
  fontFamilyFallback: [
    'Liberation Serif',
    'Noto Sans CJK',
    'Tibetan Machine Uni',
  ],
);
final yaruHeadline1Style = _yaruTextStyle;
final yaruHeadline2Style = _yaruTextStyle;
final yaruHeadline3Style = _yaruTextStyle;
final yaruHeadline4Style = _yaruTextStyle;
final yaruHeadline5Style = _yaruTextStyle;
final yaruHeadline6Style = _yaruTextStyle;
final yaruSubtitle1Style = _yaruTextStyle;
final yaruSubtitle2Style = _yaruTextStyle;
final yaruBodyText1Style = _yaruTextStyle;
final yaruBodyText2Style = _yaruTextStyle;
final yaruCaptionStyle = _yaruTextStyle;
final yaruButtonStyle = _yaruTextStyle;
final yaruOverlineStyle = _yaruTextStyle;

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
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)));

final yaruOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: yaruTextGrey));

final yaruDarkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: yaruWhite));

final yaruAppBarLightTheme = AppBarTheme(
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

final yaruAppBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: yaruCoolGrey,
);

final yaruTheme = ThemeData(
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
    indicatorColor: yaruLightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: yaruLightColorScheme,
    buttonTheme: yaruButtonThemeData,
    elevatedButtonTheme: elevatedButtonThemeDataLight,
    outlinedButtonTheme: yaruOutlinedButtonThemeData,
    appBarTheme: yaruAppBarLightTheme);

final yaruDarkTheme = ThemeData(
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

final elevatedButtonThemeDataLight = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(getElevatedButtonColorLight)));

final elevatedButtonThemeDataDark = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(getElevatedButtonColorDark)));

// Switches
Color getSwitchThumbColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.focused,
    MaterialState.dragged,
    MaterialState.selected
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };

  if (states.any(interactiveStates.contains)) {
    return yaruLightAubergine;
  }
  if (states.any(disabledStates.contains)) {
    return yaruDisabledGreyDark;
  }
  return yaruWhite;
}

Color getSwitchTrackColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.focused,
    MaterialState.selected,
    MaterialState.dragged
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };

  if (states.any(interactiveStates.contains)) {
    return yaruMidAubergine;
  }
  if (states.contains(disabledStates)) {
    return yaruDisabledGreyDark;
  }
  return yaruWarmGrey;
}

final switchStyleDark = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(getSwitchTrackColorDark));

// Checks
Color getCheckFillColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.focused,
    MaterialState.selected,
    MaterialState.dragged
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaruMidAubergine;
  }
  if (states.any(disabledStates.contains)) {
    return yaruDisabledGreyDark;
  }
  return yaruWarmGrey;
}

Color getCheckColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.focused,
    MaterialState.selected,
    MaterialState.dragged
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaruWhite;
  }
  if (states.any(disabledStates.contains)) {
    return yaruDisabledGreyDark;
  }
  return yaruWhite;
}

final checkStyle = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith(getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(getCheckColorDark));

// Radios
final radioStyle = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(getCheckFillColorDark));
