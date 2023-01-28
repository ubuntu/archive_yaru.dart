import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru/src/themes/common_themes.dart';

const _primaryColor = YaruColors.xubuntuBlue;

final yaruXubuntuLight = createYaruLightTheme(
  primaryColor: _primaryColor,
);

final yaruXubuntuDark = createYaruDarkTheme(
  primaryColor: _primaryColor.shade500,
);
