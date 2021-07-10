import 'package:flutter/material.dart';
import 'package:yaru/src/utils/colors.dart' as yaru;
part '../theme/text_theme.dart';

abstract class Themeable {
  @protected
  final MaterialColor primarySwatchColor =
      MaterialColor(yaru.Colors.orange.value, {
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

  ButtonStyle buttonStyle() {
    return ButtonStyle(visualDensity: VisualDensity.standard);
  }

  TextTheme get textTheme => _textTheme;

  ColorScheme colorScheme();

  ThemeData themeData();

  ButtonThemeData buttonThemeData();

  ElevatedButtonThemeData elevatedButtonThemeData(Brightness brightness){
return ElevatedButtonThemeData(
    style: buttonStyle.copyWith(
        elevation: MaterialStateProperty.resolveWith(
            (states) => elevatedButtonElevation(states)),
        textStyle: MaterialStateProperty.all(_textTheme.button),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => elevatedButtonColor(states, brightness),),),
  );
}

  OutlinedButtonThemeData outlinedButtonThemeData();

  TextButtonThemeData textButtonThemeData();

  Color elevatedButtonColor(Set<MaterialState> states, Brightness brightness){
Color color = yaru.Colors.green;
  if (states.contains(MaterialState.disabled)) {
    color = (brightness == Brightness.light)
        ? yaru.Colors.warmGrey.withOpacity(0.7)
        : yaru.Colors.disabledGreyDark;
}

double elevatedButtonElevation(Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) {
    return 2.0;
  }
  return 0.0;
}

  Color switchThumbColor(Set<MaterialState> states);

  Color switchTrackColor(Set<MaterialState> states);

  SwitchThemeData switchThemeData();

  Color checkboxFillColor(Set<MaterialState> states);

  Color checkboxColor(Set<MaterialState> states);

  CheckboxThemeData checkboxThemeData();

  RadioThemeData radioThemeData();

  AppBarTheme appBarTheme();

  BottomNavigationBarThemeData bottomNavigationBarTheme();

  FloatingActionButtonThemeData floatingActionButtonThemeData();
}
