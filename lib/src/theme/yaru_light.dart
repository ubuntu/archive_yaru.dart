import 'package:flutter/material.dart';
import 'package:yaru/src/contracts/themeable.dart';
import 'package:yaru/yaru.dart' as yaru;

class YaruLight extends Themeable {
  @override
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      brightness: Brightness.light,
      color: yaru.Colors.porcelain,
      textTheme: textTheme.copyWith(
        headline6: textTheme.headline6!.copyWith(
          color: yaru.Colors.coolGrey,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: IconThemeData(color: yaru.Colors.coolGrey),
      actionsIconTheme: IconThemeData(color: yaru.Colors.coolGrey),
    );
  }

  @override
  BottomNavigationBarThemeData bottomNavigationBarTheme() {
    return BottomNavigationBarThemeData(
      selectedItemColor: colorScheme().primary,
      unselectedItemColor: yaru.Colors.coolGrey,
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
    return yaru.Colors.warmGrey.shade300;
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
      primarySwatch: primarySwatchColor,
      primaryColorDark: yaru.Colors.coolGrey,
      accentColor: yaru.Colors.orange,
      cardColor: Colors.white,
      backgroundColor: yaru.Colors.porcelain,
      errorColor: yaru.Colors.red,
      brightness: Brightness.light,
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
      return yaru.Colors.warmGrey;
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
  FloatingActionButtonThemeData floatingActionButtonThemeData() {
    return FloatingActionButtonThemeData(
      backgroundColor: yaru.Colors.green,
    );
  }

  @override
  OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      visualDensity: buttonStyle().visualDensity,
      primary: yaru.Colors.textGrey,
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
      return yaru.Colors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return yaru.Colors.orange;
      } else {
        return Colors.white;
      }
    }
  }

  @override
  Color switchTrackColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) {
      return yaru.Colors.warmGrey.shade200;
    } else {
      if (states.contains(MaterialState.selected)) {
        return yaru.Colors.orange.withAlpha(180);
      } else {
        return yaru.Colors.warmGrey.shade300;
      }
    }
  }

  @override
  TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
        style:
            TextButton.styleFrom(visualDensity: buttonStyle().visualDensity));
  }

  @override
  ThemeData themeData() {
    return ThemeData(
      brightness: Brightness.light,
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
      applyElevationOverlayColor: false,
      colorScheme: colorScheme(),
      buttonTheme: buttonThemeData(),
      elevatedButtonTheme: elevatedButtonThemeData(),
      outlinedButtonTheme: outlinedButtonThemeData(),
      textButtonTheme: textButtonThemeData(),
      switchTheme: switchThemeData(),
      checkboxTheme: checkboxThemeData(),
      radioTheme: radioThemeData(),
      appBarTheme: appBarTheme(),
      floatingActionButtonTheme: floatingActionButtonThemeData(),
      bottomNavigationBarTheme: bottomNavigationBarTheme(),
    );
  }
}
