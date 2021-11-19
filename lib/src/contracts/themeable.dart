import 'package:flutter/material.dart';

///[Themeable] a contract class (interface) which ensure same naming in all themes.
abstract class Themeable {
  ThemeData themeData();

  ColorScheme lightColorScheme();

  Color switchThumbColor(Set<MaterialState> states);

  Color switchTrackColor(Set<MaterialState> states);

  SwitchThemeData switchThemeData();

  Color checkboxFillColor(Set<MaterialState> states);

  Color checkboxColor(Set<MaterialState> states);

  CheckboxThemeData checkboxThemeData();

  RadioThemeData radioThemeData();

  AppBarTheme appBarTheme();

  ButtonStyle buttonStyle();

  ButtonThemeData buttonThemeData();

  OutlinedButtonThemeData outlinedButtonThemeData();

  TextButtonThemeData textButtonThemeData();

  Color elevatedButtonColor(
    Set<MaterialState> states,
    Brightness brightness,
    Color color,
  );

  double buttonElevation(Set<MaterialState> states);

  ElevatedButtonThemeData elevatedButtonThemeData(
    Brightness brightness,
    Color color,
  );
}
