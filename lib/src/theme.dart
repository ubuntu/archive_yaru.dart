import 'package:flutter/material.dart';
import 'package:yaru/src/headline_style.dart';
import 'package:yaru/src/utils/colors.dart' as yaru;

MaterialColor _primarySwatchColor = MaterialColor(yaru.Colors.orange.value, {
  50: Color(0xFFFDEEE9),
  100: Color(0xFFFBDDD2),
  200: Color(0xFFF6BBA6),
  300: Color(0xFFF29879),
  400: Color(0xFFED764D),
  500: Color(yaru.Colors.orange.value),
  600: Color(0xFFBA431A),
  700: Color(0xFF8C3213),
  800: Color(0xFF5D220D),
  900: Color(0xFF2F1106),
});

ColorScheme _lightColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: _primarySwatchColor,
    primaryColorDark: yaru.Colors.coolGrey,
    accentColor: yaru.Colors.lightAubergine,
    cardColor: Colors.white,
    backgroundColor: Colors.white,
    errorColor: yaru.Colors.red,
    brightness: Brightness.light);

ColorScheme _darkColorScheme = ColorScheme.fromSwatch(
    // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
    primarySwatch: _primarySwatchColor,
    primaryColorDark: yaru.Colors.coolGrey,
    accentColor: yaru.Colors.lightAubergine,
    cardColor: yaru.Colors.coolGrey,
    backgroundColor: yaru.Colors.coolGrey,
    errorColor: yaru.Colors.red,
    brightness: Brightness.dark);

TextTheme _textTheme = TextTheme(
  headline1: HeadlineStyle.headline1,
  headline2: HeadlineStyle.headline2,
  headline3: HeadlineStyle.headline3,
  headline4: HeadlineStyle.headline4,
  headline5: HeadlineStyle.headline5,
  headline6: HeadlineStyle.headline6,
  subtitle1: HeadlineStyle.subtitle1,
  subtitle2: HeadlineStyle.subtitle2,
  bodyText1: HeadlineStyle.bodyText1,
  bodyText2: HeadlineStyle.bodyText2,
  caption: HeadlineStyle.caption,
  button: HeadlineStyle.button,
  overline: HeadlineStyle.overLine,
);

ButtonThemeData _buttonThemeData = ButtonThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)));

OutlinedButtonThemeData _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: yaru.Colors.textGrey));

OutlinedButtonThemeData _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(primary: Colors.white));

AppBarTheme _appBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: Colors.white,
  textTheme: _textTheme.copyWith(
      headline6: HeadlineStyle.headline6.copyWith(
    color: yaru.Colors.coolGrey,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  )),
  iconTheme: IconThemeData(color: yaru.Colors.coolGrey),
  actionsIconTheme: IconThemeData(color: yaru.Colors.coolGrey),
);

AppBarTheme _appBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: yaru.Colors.coolGrey,
);

ThemeData theme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
    canvasColor: _lightColorScheme.background,
    accentColor: _lightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.secondary),
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomAppBarColor: _lightColorScheme.surface,
    cardColor: _lightColorScheme.surface,
    dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _lightColorScheme.background,
    dialogBackgroundColor: _lightColorScheme.background,
    errorColor: _lightColorScheme.error,
    textTheme: _textTheme,
    indicatorColor: _lightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: _lightColorScheme,
    buttonTheme: _buttonThemeData,
    elevatedButtonTheme: _elevatedButtonThemeDataLight,
    outlinedButtonTheme: _outlinedButtonThemeData,
    appBarTheme: _appBarDarkTheme);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
    canvasColor: _lightColorScheme.background,
    accentColor: _lightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.secondary),
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomAppBarColor: _lightColorScheme.surface,
    cardColor: _lightColorScheme.surface,
    dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _lightColorScheme.background,
    dialogBackgroundColor: _lightColorScheme.background,
    errorColor: _lightColorScheme.error,
    textTheme: _textTheme,
    indicatorColor: _lightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: _lightColorScheme,
    buttonTheme: _buttonThemeData,
    elevatedButtonTheme: _elevatedButtonThemeDataLight,
    outlinedButtonTheme: _outlinedButtonThemeData,
    appBarTheme: _appBarLightTheme);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(_darkColorScheme.primary),
    canvasColor: _darkColorScheme.background,
    accentColor: _darkColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(_darkColorScheme.secondary),
    scaffoldBackgroundColor: _darkColorScheme.background,
    bottomAppBarColor: _darkColorScheme.surface,
    cardColor: _darkColorScheme.surface,
    dividerColor: _darkColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _darkColorScheme.background,
    dialogBackgroundColor: _darkColorScheme.background,
    errorColor: _darkColorScheme.error,
    textTheme: _textTheme,
    indicatorColor: _darkColorScheme.secondary,
    applyElevationOverlayColor: true,
    colorScheme: _darkColorScheme,
    buttonTheme: _buttonThemeData,
    elevatedButtonTheme: _elevatedButtonThemeDataDark,
    outlinedButtonTheme: _darkOutlinedButtonThemeData,
    switchTheme: _switchStyleDark,
    checkboxTheme: _checkStyle,
    radioTheme: _radioStyle,
    primaryColorDark: yaru.Colors.orange,
    appBarTheme: _appBarDarkTheme,
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: yaru.Colors.green),
    inputDecorationTheme: _inputDecorationTheme);

// Special casing some widgets
// That are not catched with the default theming in flutter
// "Green" elevated Buttons
Color _getElevatedButtonColorLight(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaru.Colors.green;
  } else if (states.any(disabledStates.contains)) {
    return yaru.Colors.warmGrey;
  }
  return yaru.Colors.green;
}

Color _getElevatedButtonColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaru.Colors.green;
  } else if (states.any(disabledStates.contains)) {
    return yaru.Colors.disabledGreyDark;
  }
  return yaru.Colors.green;
}

ElevatedButtonThemeData _elevatedButtonThemeDataLight = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(_getElevatedButtonColorLight)));

ElevatedButtonThemeData _elevatedButtonThemeDataDark = ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(_getElevatedButtonColorDark)));

// Switches
Color _getSwitchThumbColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.warmGrey;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.midAubergine;
    } else {
      return Colors.white;
    }
  }
}

Color _getSwitchTrackColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.disabledGreyDark;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.midAubergine;
    } else {
      return yaru.Colors.warmGrey;
    }
  }
}

SwitchThemeData _switchStyleDark = SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark));

// Checks
Color _getCheckFillColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine;
    }
    return yaru.Colors.warmGrey;
  }
  return yaru.Colors.disabledGreyDark;
}

Color _getCheckColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return yaru.Colors.warmGrey;
}

CheckboxThemeData _checkStyle = CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark));

// Radios
RadioThemeData _radioStyle = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark));

InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
  labelStyle: TextStyle(color: yaru.Colors.warmGrey),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: yaru.Colors.orange,
      width: 2.0,
    ),
  ),
);
