import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/contracts/base_theming.dart';
import 'package:yaru/src/text/text_theme.dart';

///[YaruLighter] a basic implementation of [BaseTheming] where implement common (shared) stuff for all **light** themes.
///
/// Every light theme need the common stuff should inherit this class.
///
/// **Remember:** if you need to implement something for both **dark** and **light** themes do it in [BaseTheming] contract.
abstract class YaruLighter extends BaseTheming {
  @override
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      elevation: 1.0,
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
  }

  @override
  OutlinedButtonThemeData outlinedButtonThemeData() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        visualDensity: buttonStyle().visualDensity,
        primary: YaruColors.textGrey,
      ),
    );
  }
}
