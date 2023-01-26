import 'package:flutter/material.dart';
import 'package:yaru/src/themes/common_themes.dart';

final yaruHighContrastLight = createYaruLightTheme(
  primaryColor: Colors.black,
);

final yaruHighContrastDark = createYaruDarkTheme(
  primaryColor: Colors.white,
  highcontrast: true,
);
