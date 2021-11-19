import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/contracts/yaru_darker.dart';
import 'package:yaru/src/text/text_theme.dart';

class YaruDark extends YaruDarker {
  final _primaryColor = YaruColors.ubuntuOrange;

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
      return YaruColors.warmGrey.shade400;
    }
    return YaruColors.warmGrey.withOpacity(0.4);
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
      cardColor: YaruColors.jet,
      backgroundColor: YaruColors.jet,
      errorColor: YaruColors.red,
      brightness: Brightness.dark,
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
      return YaruColors.disabledGreyDark;
    } else {
      if (states.contains(MaterialState.selected)) {
        return _primaryColor;
      } else {
        return YaruColors.warmGrey;
      }
    }
  }

  @override
  Color switchTrackColor(Set<MaterialState> states) {
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

  @override
  ThemeData themeData() {
    return ThemeData(
      tabBarTheme: TabBarTheme(labelColor: colorScheme().onBackground),
      dialogTheme: DialogTheme(
        backgroundColor: YaruColors.coolGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: BorderSide(
            color: Colors.white.withOpacity(0.2),
          ),
        ),
      ),
      brightness: Brightness.dark,
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
      applyElevationOverlayColor: true,
      colorScheme: colorScheme(),
      buttonTheme: buttonThemeData(),
      textButtonTheme: textButtonThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(
        Brightness.dark,
        YaruColors.green,
      ),
      outlinedButtonTheme: outlinedButtonThemeData(),
      switchTheme: switchThemeData(),
      checkboxTheme: checkboxThemeData(),
      radioTheme: radioThemeData(),
      primaryColorDark: _primaryColor,
      appBarTheme: appBarTheme(),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: YaruColors.green,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme().primary,
        unselectedItemColor: YaruColors.warmGrey.shade300,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
      ),
    );
  }
}