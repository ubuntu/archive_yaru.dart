import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = FlavorColors.ubuntuBudgieBlue;

final _darkColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: YaruColors.jet,
  backgroundColor: YaruColors.jet,
  errorColor: YaruColors.errorRed,
  brightness: Brightness.dark,
);

final yaruUbuntuBudgieDark = createYaruDarkTheme(
    colorScheme: _darkColorScheme, primaryColor: _primaryColor);
