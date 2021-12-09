import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/colors/yaru_colors.dart';

const _appBarElevation = 1.0;

final appBarLightTheme = AppBarTheme(
  elevation: _appBarElevation,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  backgroundColor: YaruColors.porcelain,
  foregroundColor: YaruColors.coolGrey,
  titleTextStyle: textTheme.headline6!.copyWith(
    color: YaruColors.coolGrey,
    fontWeight: FontWeight.normal,
  ),
  iconTheme: IconThemeData(color: YaruColors.coolGrey),
  actionsIconTheme: IconThemeData(color: YaruColors.coolGrey),
);

final appBarDarkTheme = AppBarTheme(
  elevation: _appBarElevation,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  backgroundColor: YaruColors.jet,
  foregroundColor: YaruColors.porcelain,
  titleTextStyle: textTheme.headline6!.copyWith(
    color: YaruColors.porcelain,
    fontWeight: FontWeight.normal,
  ),
);

final commonButtonStyle = ButtonStyle(visualDensity: VisualDensity.standard);

final buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: commonButtonStyle.visualDensity,
  primary: YaruColors.textGrey,
));

final darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: commonButtonStyle.visualDensity,
  primary: Colors.white,
));

final textButtonThemeData = TextButtonThemeData(
    style:
        TextButton.styleFrom(visualDensity: commonButtonStyle.visualDensity));

ElevatedButtonThemeData getElevatedButtonThemeData(
    Brightness brightness, Color color) {
  return ElevatedButtonThemeData(
    style: commonButtonStyle.copyWith(
        elevation: MaterialStateProperty.resolveWith(
            (states) => _getElevation(states)),
        textStyle: MaterialStateProperty.all(textTheme.button),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => _getElevatedButtonColor(states, brightness, color))),
  );
}

Color _getElevatedButtonColor(
    Set<MaterialState> states, Brightness brightness, Color color) {
  if (states.contains(MaterialState.disabled)) {
    color = (brightness == Brightness.light)
        ? YaruColors.warmGrey.withOpacity(0.7)
        : YaruColors.disabledGreyDark;
  }
  return color;
}

double _getElevation(Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) {
    return 2.0;
  }
  return 0.0;
}

final listTileTheme = ListTileThemeData(dense: true);

final inputDecorationTheme = InputDecorationTheme(
  isDense: true,
  border: OutlineInputBorder(),
);
