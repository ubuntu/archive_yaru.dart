import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = FlavorColors.kubuntuBlue;

final _lightColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: Colors.white,
  backgroundColor: YaruColors.porcelain,
  errorColor: YaruColors.red,
  brightness: Brightness.light,
);

final yaruKubuntuLight = ThemeData(
    tabBarTheme: TabBarTheme(labelColor: _lightColorScheme.onSurface),
    brightness: Brightness.light,
    primaryColor: _lightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
    canvasColor: _lightColorScheme.background,
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomAppBarColor: _lightColorScheme.surface,
    cardColor: _lightColorScheme.surface,
    dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _lightColorScheme.background,
    dialogBackgroundColor: _lightColorScheme.background,
    errorColor: _lightColorScheme.error,
    textTheme: textTheme,
    indicatorColor: _lightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: _lightColorScheme,
    buttonTheme: buttonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    elevatedButtonTheme:
        getElevatedButtonThemeData(Brightness.light, _primaryColor),
    textButtonTheme: textButtonThemeData,
    switchTheme: _switchStyleLight,
    checkboxTheme: _checkStyleLight,
    radioTheme: _radioStyleLight,
    appBarTheme: appBarLightTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _primaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: _lightColorScheme.primary,
      unselectedItemColor: YaruColors.coolGrey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ));

Color _getSwitchThumbColorLight(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor;
    } else {
      return Colors.white;
    }
  }
}

Color _getSwitchTrackColorLight(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor.withAlpha(180);
    } else {
      return YaruColors.warmGrey.shade300;
    }
  }
}

final _switchStyleLight = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorLight),
  trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorLight),
);

Color _getCheckFillColorLight(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return _primaryColor;
    }
    return YaruColors.warmGrey;
  }
  return YaruColors.warmGrey.shade300;
}

Color _getCheckColorLight(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return YaruColors.warmGrey;
}

final _checkStyleLight = CheckboxThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(2),
  ),
  fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
  checkColor: MaterialStateProperty.resolveWith(_getCheckColorLight),
);

final _radioStyleLight = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight));
