import 'package:flutter/material.dart';
import 'package:yaru/src/themes/budgie/yaru_ubuntu_budgie_dark.dart';
import 'package:yaru/src/themes/budgie/yaru_ubuntu_budgie_light.dart';
import 'package:yaru/src/themes/default/yaru_dark.dart';
import 'package:yaru/src/themes/default/yaru_light.dart';
import 'package:yaru/src/themes/kubuntu/yaru_kubuntu_dark.dart';
import 'package:yaru/src/themes/kubuntu/yaru_kubuntu_light.dart';
import 'package:yaru/src/themes/lubuntu/yaru_lubuntu_dark.dart';
import 'package:yaru/src/themes/lubuntu/yaru_lubuntu_light.dart';
import 'package:yaru/src/themes/mate/yaru_mate_dark.dart';
import 'package:yaru/src/themes/mate/yaru_mate_light.dart';
import 'package:yaru/src/themes/studio/yaru_ubuntu_studio_dark.dart';
import 'package:yaru/src/themes/studio/yaru_ubuntu_studio_light.dart';
import 'package:yaru/src/themes/xubuntu/yaru_xubuntu_dark.dart';
import 'package:yaru/src/themes/xubuntu/yaru_xubuntu_light.dart';

class YaruTheme {
  YaruTheme._();

  static ThemeData get dark => YaruDark().themeData();

  static ThemeData get light => YaruLight().themeData();

  static ThemeData get budgieDark => YaruBudgieDark().themeData();

  static ThemeData get budgieLight => YaruBudgieLight().themeData();

  static ThemeData get kubuntuDark => KubuntuDark().themeData();

  static ThemeData get kubuntuLight => KubuntuLight().themeData();

  static ThemeData get lubuntuDark => LubuntuDark().themeData();

  static ThemeData get lubuntuLight => LubuntuLight().themeData();

  static ThemeData get mateDark => YaruMateDark().themeData();

  static ThemeData get mateLight => YaruMateLight().themeData();

  static ThemeData get studioDark => UbuntuStudioDark().themeData();

  static ThemeData get studioLight => UbuntuStudioLight().themeData();

  static ThemeData get xubuntuDark => XubuntuDark().themeData();

  static ThemeData get xubuntuLight => XubuntuLight().themeData();
}
