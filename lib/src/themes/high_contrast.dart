import 'package:flutter/material.dart';
import 'package:yaru_colors/yaru_colors.dart';

import 'package:yaru/src/themes/common_themes.dart';

final yaruHighContrastLight = createYaruLightTheme(
  colorScheme: const ColorScheme.highContrastLight(
    primary: Colors.black,
    secondary: Colors.black,
    onSecondary: Colors.white,
    error: YaruColors.error,
  ),
  primaryColor: Colors.black,
);

final yaruHighContrastDark = createYaruDarkTheme(
  colorScheme: const ColorScheme.highContrastDark(
    primary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.black,
    error: YaruColors.error,
  ),
  primaryColor: Colors.white,
);
