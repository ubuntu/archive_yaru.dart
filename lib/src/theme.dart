import 'package:flutter/material.dart';
import '../yaru.dart';
import 'utils/swatch.dart';

ColorScheme get _lightColorScheme => ColorScheme.fromSwatch(
      // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
      primarySwatch: YaruSwatch.orange,
      primaryColorDark: YaruColor.coolGrey,
      accentColor: YaruColor.lightAubergine,
      cardColor: YaruColor.white,
      backgroundColor: YaruColor.white,
      errorColor: YaruColor.red,
      brightness: Brightness.light,
    );

ColorScheme get _darkColorScheme => ColorScheme.fromSwatch(
      // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
      primarySwatch: YaruSwatch.orange,
      primaryColorDark: YaruColor.coolGrey,
      accentColor: YaruColor.lightAubergine,
      cardColor: YaruColor.coolGrey,
      backgroundColor: YaruColor.coolGrey,
      errorColor: YaruColor.red,
      brightness: Brightness.dark,
    );

const _textStyle = TextStyle(
  fontFamily: 'Ubuntu',
  package: 'yaru',
  fontFamilyFallback: [
    'Liberation Serif',
    'Noto Sans CJK',
    'Tibetan Machine Uni',
  ],
);
const _headline1Style = _textStyle;
const _headline2Style = _textStyle;
const _headline3Style = _textStyle;
const _headline4Style = _textStyle;
const _headline5Style = _textStyle;
const _headline6Style = _textStyle;
const _subtitle1Style = _textStyle;
const _subtitle2Style = _textStyle;
const _bodyText1Style = _textStyle;
const _bodyText2Style = _textStyle;
const _captionStyle = _textStyle;
const _buttonStyle = _textStyle;
const _overLineStyle = _textStyle;

const _textTheme = TextTheme(
  headline1: _headline1Style,
  headline2: _headline2Style,
  headline3: _headline3Style,
  headline4: _headline4Style,
  headline5: _headline5Style,
  headline6: _headline6Style,
  subtitle1: _subtitle1Style,
  subtitle2: _subtitle2Style,
  bodyText1: _bodyText1Style,
  bodyText2: _bodyText2Style,
  caption: _captionStyle,
  button: _buttonStyle,
  overline: _overLineStyle,
);

const _appBarLightTextTheme = TextTheme(
  headline1: _headline1Style,
  headline2: _headline2Style,
  headline3: _headline3Style,
  headline4: _headline4Style,
  headline5: _headline5Style,
  headline6: TextStyle(
    fontFamily: 'Ubuntu',
    package: 'yaru',
    fontFamilyFallback: [
      'Liberation Serif',
      'Noto Sans CJK',
      'Tibetan Machine Uni',
    ],
    color: YaruColor.coolGrey,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  subtitle1: _subtitle1Style,
  subtitle2: _subtitle2Style,
  bodyText1: _bodyText1Style,
  bodyText2: _bodyText2Style,
  caption: _captionStyle,
  button: _buttonStyle,
  overline: _overLineStyle,
);

ButtonThemeData get _buttonThemeData {
  return ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
  );
}

OutlinedButtonThemeData get _outlinedButtonThemeData {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: YaruColor.textGrey,
    ),
  );
}

OutlinedButtonThemeData get _darkOutlinedButtonThemeData {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: Colors.white,
    ),
  );
}

const _appBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: Colors.white,
  textTheme: _appBarLightTextTheme,
  iconTheme: IconThemeData(color: YaruColor.coolGrey),
  actionsIconTheme: IconThemeData(color: YaruColor.coolGrey),
);

const _appBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: YaruColor.coolGrey,
);

ThemeData get theme {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColorScheme.primary,
    primaryColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
    canvasColor: _lightColorScheme.background,
    accentColor: _lightColorScheme.secondary,
    accentColorBrightness:
        ThemeData.estimateBrightnessForColor(_lightColorScheme.secondary),
    scaffoldBackgroundColor: _lightColorScheme.background,
    bottomAppBarColor: _lightColorScheme.surface,
    cardColor: _lightColorScheme.surface,
    dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
    backgroundColor: _lightColorScheme.background,
    dialogBackgroundColor: _lightColorScheme.background,
    errorColor: _lightColorScheme.error,
    textTheme: _textTheme,
    indicatorColor: _lightColorScheme.secondary,
    applyElevationOverlayColor: false,
    colorScheme: _lightColorScheme,
    buttonTheme: _buttonThemeData,
    elevatedButtonTheme: _elevatedButtonThemeDataLight,
    outlinedButtonTheme: _outlinedButtonThemeData,
    appBarTheme: _appBarDarkTheme,
  );
}

ThemeData get lightTheme {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: _lightColorScheme.primary,
      primaryColorBrightness:
          ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
      canvasColor: _lightColorScheme.background,
      accentColor: _lightColorScheme.secondary,
      accentColorBrightness:
          ThemeData.estimateBrightnessForColor(_lightColorScheme.secondary),
      scaffoldBackgroundColor: _lightColorScheme.background,
      bottomAppBarColor: _lightColorScheme.surface,
      cardColor: _lightColorScheme.surface,
      dividerColor: _lightColorScheme.onSurface.withOpacity(0.12),
      backgroundColor: _lightColorScheme.background,
      dialogBackgroundColor: _lightColorScheme.background,
      errorColor: _lightColorScheme.error,
      textTheme: _textTheme,
      indicatorColor: _lightColorScheme.secondary,
      applyElevationOverlayColor: false,
      colorScheme: _lightColorScheme,
      buttonTheme: _buttonThemeData,
      elevatedButtonTheme: _elevatedButtonThemeDataLight,
      outlinedButtonTheme: _outlinedButtonThemeData,
      appBarTheme: _appBarLightTheme);
}

ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      primaryColor: _darkColorScheme.primary,
      primaryColorBrightness:
          ThemeData.estimateBrightnessForColor(_darkColorScheme.primary),
      canvasColor: _darkColorScheme.background,
      accentColor: _darkColorScheme.secondary,
      accentColorBrightness:
          ThemeData.estimateBrightnessForColor(_darkColorScheme.secondary),
      scaffoldBackgroundColor: _darkColorScheme.background,
      bottomAppBarColor: _darkColorScheme.surface,
      cardColor: _darkColorScheme.surface,
      dividerColor: _darkColorScheme.onSurface.withOpacity(0.12),
      backgroundColor: _darkColorScheme.background,
      dialogBackgroundColor: _darkColorScheme.background,
      errorColor: _darkColorScheme.error,
      textTheme: _textTheme,
      indicatorColor: _darkColorScheme.secondary,
      applyElevationOverlayColor: true,
      colorScheme: _darkColorScheme,
      buttonTheme: _buttonThemeData,
      elevatedButtonTheme: _elevatedButtonThemeDataDark,
      outlinedButtonTheme: _darkOutlinedButtonThemeData,
      switchTheme: _switchStyleDark,
      checkboxTheme: _checkStyle,
      radioTheme: _radioStyle,
      primaryColorDark: YaruColor.ubuntuOrange,
      appBarTheme: _appBarDarkTheme,
    );

// Special casing some widgets
// That are not catched with the default theming in flutter
// "Green" elevated Buttons

const _disabledStates = <MaterialState>{
  MaterialState.disabled,
};

const _interactiveStates = <MaterialState>{
  MaterialState.pressed,
  MaterialState.hovered,
  MaterialState.focused,
};

Color _getElevatedButtonColorLight(Set<MaterialState> states) {
  if (states.any(_interactiveStates.contains)) {
    return YaruColor.green;
  }
  if (states.any(_disabledStates.contains)) {
    return YaruColor.warmGrey;
  }
  return YaruColor.green;
}

Color _getElevatedButtonColorDark(Set<MaterialState> states) {
  if (states.any(_interactiveStates.contains)) {
    return YaruColor.green;
  } else if (states.any(_disabledStates.contains)) {
    return YaruColor.disabledGreyDark;
  }
  return YaruColor.green;
}

ElevatedButtonThemeData get _elevatedButtonThemeDataLight =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(_getElevatedButtonColorLight),
      ),
    );

ElevatedButtonThemeData get _elevatedButtonThemeDataDark =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith(_getElevatedButtonColorDark),
      ),
    );

// Switches
Color _getSwitchThumbColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColor.warmGrey;
  } else {
    if (states.contains(MaterialState.selected)) {
      return YaruColor.midAubergine;
    } else {
      return Colors.white;
    }
  }
}

Color _getSwitchTrackColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return YaruColor.disabledGreyDark;
  } else {
    if (states.contains(MaterialState.selected)) {
      return YaruColor.midAubergine;
    } else {
      return YaruColor.warmGrey;
    }
  }
}

SwitchThemeData get _switchStyleDark {
  return SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
    trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark),
  );
}

// Checks
Color _getCheckFillColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return YaruColor.lightAubergine;
    }
    return YaruColor.warmGrey;
  }
  return YaruColor.disabledGreyDark;
}

Color _getCheckColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return YaruColor.warmGrey;
}

CheckboxThemeData get _checkStyle {
  return CheckboxThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark),
  );
}

// Radios
RadioThemeData get _radioStyle {
  return RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
  );
}
