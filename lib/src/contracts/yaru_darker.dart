import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/contracts/base_theming.dart';
import 'package:yaru/src/text/text_theme.dart';

///[YaruDarker] a basic implementation of [BaseTheming] where implement common (shared) stuff for all **dark** themes.
///
/// Every dark theme need the common stuff should inherit this class.
///
/// **Remember:** if you need to implement something for the both **dark** and **light** themes do it in [BaseTheming] contract.
abstract class YaruDarker extends BaseTheming {
  @override
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      elevation: 1.0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: YaruColors.jet,
      foregroundColor: YaruColors.porcelain,
      titleTextStyle: textTheme.headline6!.copyWith(
        color: YaruColors.porcelain,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  @override
  OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        visualDensity: buttonStyle().visualDensity,
        primary: Colors.white,
      ),
    );
  }
}
