import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/contracts/yaru_lighter.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/common_themes.dart';

class LubuntuLight extends YaruLighter {
  final _primaryColor = FlavorColors.lubuntuBlue;

  @override
  Color checkboxColor(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return YaruColors.warmGrey;
  }

  @override
  Color checkboxFillColor(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return _primaryColor;
      }
      return YaruColors.warmGrey;
    }
    return YaruColors.warmGrey.shade300;
  }

  @override
  CheckboxThemeData checkboxThemeData() {
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      fillColor: MaterialStateProperty.resolveWith(checkboxFillColor),
      checkColor: MaterialStateProperty.resolveWith(checkboxColor),
    );
  }

  @override
  ColorScheme colorScheme() {
    return ColorScheme.fromSwatch(
      primarySwatch: _primaryColor,
      primaryColorDark: YaruColors.coolGrey,
      accentColor: _primaryColor,
      cardColor: Colors.white,
      backgroundColor: YaruColors.porcelain,
      errorColor: YaruColors.red,
      brightness: Brightness.light,
    );
  }

  @override
  RadioThemeData radioThemeData() {
    return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(checkboxFillColor),
    );
  }

  @override
  SwitchThemeData switchThemeData() {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(switchThumbColor),
      trackColor: MaterialStateProperty.resolveWith(switchTrackColor),
    );
  }

  @override
  Color switchThumbColor(Set<MaterialState> states) {
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

  @override
  Color switchTrackColor(Set<MaterialState> states) {
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

  @override
  ThemeData themeData() {
    return ThemeData(
      tabBarTheme: TabBarTheme(labelColor: colorScheme().onSurface),
      brightness: Brightness.light,
      primaryColor: colorScheme().primary,
      primaryColorBrightness: ThemeData.estimateBrightnessForColor(
        colorScheme().primary,
      ),
      canvasColor: colorScheme().background,
      scaffoldBackgroundColor: colorScheme().background,
      bottomAppBarColor: colorScheme().surface,
      cardColor: colorScheme().surface,
      dividerColor: colorScheme().onSurface.withOpacity(0.12),
      backgroundColor: colorScheme().background,
      dialogBackgroundColor: colorScheme().background,
      errorColor: colorScheme().error,
      textTheme: textTheme,
      indicatorColor: colorScheme().secondary,
      applyElevationOverlayColor: false,
      colorScheme: colorScheme(),
      buttonTheme: buttonThemeData,
      outlinedButtonTheme: outlinedButtonThemeData,
      elevatedButtonTheme: elevatedButtonThemeData(
        Brightness.light,
        _primaryColor,
      ),
      textButtonTheme: textButtonThemeData,
      switchTheme: switchThemeData(),
      checkboxTheme: checkboxThemeData(),
      radioTheme: radioThemeData(),
      appBarTheme: appBarLightTheme,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme().primary,
        unselectedItemColor: YaruColors.coolGrey,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }
}
