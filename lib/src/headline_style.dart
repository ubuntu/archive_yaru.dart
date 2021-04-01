import 'package:flutter/material.dart';

TextStyle _textStyle = TextStyle(
  fontFamily: 'Ubuntu',
  package: 'yaru',
  fontFamilyFallback: [
    'Liberation Serif',
    'Noto Sans CJK',
    'Tibetan Machine Uni',
  ],
);

class HeadlineStyle {
  HeadlineStyle._();

  static TextStyle _headline1 = _textStyle;
  static TextStyle _headline2 = _textStyle;
  static TextStyle _headline3 = _textStyle;
  static TextStyle _headline4 = _textStyle;
  static TextStyle _headline5 = _textStyle;
  static TextStyle _headline6 = _textStyle;
  static TextStyle _subtitle1 = _textStyle;
  static TextStyle _subtitle2 = _textStyle;
  static TextStyle _bodyText1 = _textStyle;
  static TextStyle _bodyText2 = _textStyle;
  static TextStyle _caption = _textStyle;
  static TextStyle _button = _textStyle;
  static TextStyle _overLine = _textStyle;

  static TextStyle get headline1 => _headline1;

  static TextStyle get headline2 => _headline2;

  static TextStyle get headline3 => _headline3;

  static TextStyle get headline4 => _headline4;

  static TextStyle get headline5 => _headline5;

  static TextStyle get headline6 => _headline6;

  static TextStyle get subtitle1 => _subtitle1;

  static TextStyle get subtitle2 => _subtitle2;

  static TextStyle get bodyText1 => _bodyText1;

  static TextStyle get bodyText2 => _bodyText2;

  static TextStyle get caption => _caption;

  static TextStyle get button => _button;

  static TextStyle get overLine => _overLine;
}
