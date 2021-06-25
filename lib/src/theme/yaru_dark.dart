import 'package:flutter/material.dart';
import 'package:yaru/src/contracts/themeable.dart';
import 'package:yaru/src/utils/colors.dart' as yaru;

class YaruDark extends Themeable {
  @override
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      brightness: Brightness.dark,
      color: yaru.Colors.inkstone,
    );
  }

  @override
  ButtonThemeData buttonThemeData() {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }

  @override
  Color checkboxColor(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      return Colors.white;
    }
    return yaru.Colors.warmGrey;
  }

  @override
  Color checkboxFillColor(Set<MaterialState> states) {
    if (!states.contains(MaterialState.disabled)) {
      if (states.contains(MaterialState.selected)) {
        return yaru.Colors.orange;
      }
      return yaru.Colors.warmGrey;
    }
    return yaru.Colors.disabledGreyDark;
  }

  @override
  CheckboxThemeData checkboxThemeData() {
    return CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith(checkboxFillColor),
      checkColor: MaterialStateProperty.resolveWith(checkboxColor),
    );
  }

  @override
  ColorScheme colorScheme() {
    return ColorScheme.fromSwatch(
      // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
      primarySwatch: primarySwatchColor,
      primaryColorDark: yaru.Colors.coolGrey,
      accentColor: yaru.Colors.orange,
      cardColor: yaru.Colors.coolGrey,
      backgroundColor: yaru.Colors.coolGrey,
      errorColor: yaru.Colors.red,
      brightness: Brightness.dark,
    );
  }

  @override
  Color elevatedButtonColor(Set<MaterialState> states) {
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

  @override
  ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: buttonStyle().copyWith(
        textStyle: MaterialStateProperty.all(textTheme.button),
        backgroundColor: MaterialStateProperty.resolveWith(
          elevatedButtonColor,
        ),
      ),
    );
  }

  @override
  OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      visualDensity: buttonStyle().visualDensity,
      primary: Colors.white,
    ));
  }

  @override
  RadioThemeData radioThemeData() {
    return RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith(checkboxFillColor));
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
      return yaru.Colors.disabledGreyDark;
    } else {
      if (states.contains(MaterialState.selected)) {
        return yaru.Colors.orange;
      } else {
        return yaru.Colors.warmGrey;
      }
    }
  }

  @override
  Color switchTrackColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return yaru.Colors.disabledGreyDark.withAlpha(120);
    } else {
      if (states.contains(MaterialState.selected)) {
        return yaru.Colors.orange.withAlpha(160);
      } else {
        return yaru.Colors.warmGrey.withAlpha(80);
      }
    }
  }

  @override
  TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        visualDensity: buttonStyle().visualDensity,
      ),
    );
  }

  @override
  BottomNavigationBarThemeData bottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      selectedItemColor: colorScheme().primary,
      unselectedItemColor: yaru.Colors.warmGrey.shade300,
    );
  }

  @override
  FloatingActionButtonThemeData floatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: yaru.Colors.green,
    );
  }

  @override
  ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: colorScheme().primary,
      primaryColorBrightness:
          ThemeData.estimateBrightnessForColor(colorScheme().primary),
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
      elevatedButtonTheme: elevatedButtonThemeData(),
      outlinedButtonTheme: outlinedButtonThemeData(),
      switchTheme: switchThemeData(),
      checkboxTheme: checkboxThemeData(),
      radioTheme: radioThemeData(),
      primaryColorDark: yaru.Colors.orange,
      appBarTheme: appBarTheme(),
      floatingActionButtonTheme: floatingActionButtonThemeData(),
      bottomNavigationBarTheme: bottomNavigationBarTheme(),
    );
  }
}
