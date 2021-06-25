part of '../contracts/themeable.dart';

const _textTheme = TextTheme(
  headline1: _UbuntuTextStyle(
    fontSize: 96,
    letterSpacing: -1.5,
    fontWeight: FontWeight.w300,
  ),
  headline2: _UbuntuTextStyle(
    fontSize: 60,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w300,
  ),
  headline3: _UbuntuTextStyle(
    fontSize: 48,
    fontWeight: FontWeight.normal,
  ),
  headline4: _UbuntuTextStyle(
    fontSize: 34,
    fontWeight: FontWeight.normal,
  ),
  headline5: _UbuntuTextStyle(
    fontSize: 24,
    letterSpacing: -0.18,
    fontWeight: FontWeight.normal,
  ),
  headline6: _UbuntuTextStyle(
    fontSize: 20,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  ),
  subtitle1: _UbuntuTextStyle(
    fontSize: 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.normal,
  ),
  subtitle2: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
  ),
  bodyText1: _UbuntuTextStyle(
    fontSize: 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.normal,
  ),
  bodyText2: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.normal,
  ),
  button: _UbuntuTextStyle(
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w500,
  ),
  caption: _UbuntuTextStyle(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.normal,
  ),
  overline: _UbuntuTextStyle(
    fontSize: 10,
    letterSpacing: 1.5,
    fontWeight: FontWeight.normal,
  ),
);

class _UbuntuTextStyle extends TextStyle {
  const _UbuntuTextStyle({
    double? fontSize,
    double? letterSpacing,
    FontWeight? fontWeight,
  }) : super(
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          fontFamily: 'Ubuntu',
          package: 'yaru',
          fontFamilyFallback: const [
            'Liberation Serif',
            'Noto Sans CJK',
            'Tibetan Machine Uni',
          ],
        );
}
