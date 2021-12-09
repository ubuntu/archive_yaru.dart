import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = FlavorColors.ubuntuBudgieBlue;

final _darkColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: YaruColors.jet,
  backgroundColor: YaruColors.jet,
  errorColor: YaruColors.red,
  brightness: Brightness.dark,
);

final yaruUbuntuBudgieDark = ThemeData(
  tabBarTheme: TabBarTheme(labelColor: _darkColorScheme.onSurface),
  dialogTheme: DialogTheme(
      backgroundColor: YaruColors.coolGrey,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(color: Colors.white.withOpacity(0.2)))),
  brightness: Brightness.dark,
  primaryColor: _darkColorScheme.primary,
  primaryColorBrightness:
      ThemeData.estimateBrightnessForColor(_darkColorScheme.primary),
  canvasColor: _darkColorScheme.background,
  scaffoldBackgroundColor: _darkColorScheme.background,
  bottomAppBarColor: _darkColorScheme.surface,
  cardColor: _darkColorScheme.surface,
  dividerColor: _darkColorScheme.onSurface.withOpacity(0.12),
  backgroundColor: _darkColorScheme.background,
  dialogBackgroundColor: _darkColorScheme.background,
  errorColor: _darkColorScheme.error,
  textTheme: textTheme,
  indicatorColor: _darkColorScheme.secondary,
  applyElevationOverlayColor: true,
  colorScheme: _darkColorScheme,
  buttonTheme: buttonThemeData,
  textButtonTheme: textButtonThemeData,
  elevatedButtonTheme:
      getElevatedButtonThemeData(Brightness.dark, _primaryColor),
  outlinedButtonTheme: _darkOutlinedButtonThemeData,
  switchTheme: _switchStyleDark,
  checkboxTheme: _checkStyleDark,
  radioTheme: _radioStyleDark,
  primaryColorDark: _primaryColor,
  appBarTheme: appBarDarkTheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _primaryColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _darkColorScheme.primary,
    unselectedItemColor: YaruColors.warmGrey.shade300,
  ),
  inputDecorationTheme: inputDecorationTheme,
);

final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: commonButtonStyle.visualDensity,
  primary: Colors.white,
));

// Switches
Color _getSwitchThumbColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColors.disabledGreyDark;
  } else {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor;
    } else {
      return YaruColors.warmGrey;
    }
  }
}

Color _getSwitchTrackColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColors.disabledGreyDark.withAlpha(120);
  } else {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor.withAlpha(160);
    } else {
      return YaruColors.warmGrey.withAlpha(80);
    }
  }
}

final _switchStyleDark = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
  trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark),
);

Color _getCheckFillColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor;
    }
    return YaruColors.warmGrey.shade400;
  }
  return YaruColors.warmGrey.withOpacity(0.4);
}

Color _getCheckColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return YaruColors.warmGrey;
}

final _checkStyleDark = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2),
  ),
  fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
  checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark),
);

final _radioStyleDark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark));
