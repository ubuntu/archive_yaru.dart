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
  dialogTheme: dialogThemeDark,
  brightness: Brightness.dark,
  primaryColor: _darkColorScheme.primary,
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
  elevatedButtonTheme: getElevatedButtonThemeData(_primaryColor),
  outlinedButtonTheme: darkOutlinedButtonThemeData,
  switchTheme: getSwitchThemeData(_primaryColor, Brightness.dark),
  checkboxTheme: getCheckBoxThemeData(_primaryColor, Brightness.dark),
  radioTheme: getRadioThemeData(_primaryColor, Brightness.dark),
  primaryColorDark: _primaryColor,
  appBarTheme: appBarDarkTheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: _primaryColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _darkColorScheme.primary,
    unselectedItemColor: YaruColors.warmGrey.shade300,
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(),
  ),
);
