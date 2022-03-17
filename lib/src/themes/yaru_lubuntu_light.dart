import 'package:flutter/material.dart';
import 'package:yaru/src/colors/flavor_colors.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = FlavorColors.lubuntuBlue;

final _lightColorScheme = ColorScheme.fromSwatch(
  primarySwatch: _primaryColor,
  primaryColorDark: YaruColors.coolGrey,
  accentColor: _primaryColor,
  cardColor: Colors.white,
  backgroundColor: YaruColors.porcelain,
  errorColor: YaruColors.errorRed,
  brightness: Brightness.light,
);

final yaruLubuntuLight = createYaruLightTheme(
    colorScheme: _lightColorScheme, primaryColor: _primaryColor);
