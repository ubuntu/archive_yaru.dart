import 'package:flutter/material.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/contracts/themeable.dart';
import 'package:yaru/src/text/text_theme.dart';

///[BaseTheming] a basic implementation of [Themeable] where implement common (shared) stuff for the **dark** and **light** themes.
///
/// Every theme need the common stuff should inherit this class.
///
/// **Remember:** implement **Only** common stuff for dark and light themes.
abstract class BaseTheming extends Themeable {
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
  ButtonStyle buttonStyle() {
    return ButtonStyle(visualDensity: VisualDensity.standard);
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
  TextButtonThemeData textButtonThemeData() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        visualDensity: buttonStyle().visualDensity,
      ),
    );
  }

  @override
  double buttonElevation(Set<MaterialState> states) {
    if (states.contains(MaterialState.hovered)) {
      return 2.0;
    }
    return 0.0;
  }

  @override
  Color elevatedButtonColor(
      Set<MaterialState> states, Brightness brightness, Color color) {
    if (states.contains(MaterialState.disabled)) {
      color = (brightness == Brightness.light)
          ? YaruColors.warmGrey.withOpacity(0.7)
          : YaruColors.disabledGreyDark;
    }
    return color;
  }

  @override
  ElevatedButtonThemeData elevatedButtonThemeData(
      Brightness brightness, Color color) {
    return ElevatedButtonThemeData(
      style: buttonStyle().copyWith(
        elevation: MaterialStateProperty.resolveWith(
          (states) => buttonElevation(states),
        ),
        textStyle: MaterialStateProperty.all(textTheme.button),
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) => elevatedButtonColor(states, brightness, color),
        ),
      ),
    );
  }
}
