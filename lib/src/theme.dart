import 'package:flutter/material.dart';
import 'package:yaru/src/utils/colors.dart' as yaru;
import 'package:yaru/src/utils/text_theme.dart';

part 'text_theme.dart';

final MaterialColor _primarySwatchColor =
    MaterialColor(yaru.Colors.orange.value, {
  50: Color(0xFFFDEEE9),
  100: Color(0xFFFBDDD2),
  200: Color(0xFFF6BBA6),
  300: Color(0xFFF29879),
  400: Color(0xFFED764D),
  500: Color(yaru.Colors.orange.value),
  600: Color(0xFFBA431A),
  700: Color(0xFF8C3213),
  800: Color(0xFF5D220D),
  900: Color(0xFF2F1106),
});

final _lightColorScheme = ColorScheme.fromSwatch(
  // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
  primarySwatch: _primarySwatchColor,
  primaryColorDark: yaru.Colors.coolGrey,
  accentColor: yaru.Colors.lightAubergine,
  cardColor: Colors.white,
  backgroundColor: yaru.Colors.porcelain,
  errorColor: yaru.Colors.red,
  brightness: Brightness.light,
);

final _darkColorScheme = ColorScheme.fromSwatch(
  // NOTE(robert-ancell): Light shades from 'Tint' on website, dark shades calculated.
  primarySwatch: _primarySwatchColor,
  primaryColorDark: yaru.Colors.coolGrey,
  accentColor: yaru.Colors.lightAubergine,
  cardColor: yaru.Colors.coolGrey,
  backgroundColor: yaru.Colors.coolGrey,
  errorColor: yaru.Colors.red,
  brightness: Brightness.dark,
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _lightColorScheme.primary,
  primaryColorBrightness:
      ThemeData.estimateBrightnessForColor(_lightColorScheme.primary),
  canvasColor: _lightColorScheme.background,
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
  textButtonTheme: _textButtonThemeData,
  switchTheme: _switchStyleLight,
  checkboxTheme: _checkStyleLight,
  radioTheme: _radioStyleLight,
  appBarTheme: _appBarLightTheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: yaru.Colors.green,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _lightColorScheme.primary,
    unselectedItemColor: yaru.Colors.coolGrey,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _darkColorScheme.primary,
  primaryColorBrightness:
      ThemeData.estimateBrightnessForColor(_darkColorScheme.primary),
  canvasColor: _darkColorScheme.background,
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
  textButtonTheme: _textButtonThemeData,
  elevatedButtonTheme: _elevatedButtonThemeDataDark,
  outlinedButtonTheme: _darkOutlinedButtonThemeData,
  switchTheme: _switchStyleDark,
  checkboxTheme: _checkStyleDark,
  radioTheme: _radioStyleDark,
  primaryColorDark: yaru.Colors.orange,
  appBarTheme: _appBarDarkTheme,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: yaru.Colors.green,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: _darkColorScheme.primary,
    unselectedItemColor: yaru.Colors.warmGrey.shade300,
  ),
);

// Special casing some widgets to get the desired Yaru look
// Buttons

final _commonButtonStyle = ButtonStyle(visualDensity: VisualDensity.standard);

final _buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: _commonButtonStyle.visualDensity,
  primary: yaru.Colors.textGrey,
));

final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: _commonButtonStyle.visualDensity,
  primary: Colors.white,
));

final _textButtonThemeData = TextButtonThemeData(
    style:
        TextButton.styleFrom(visualDensity: _commonButtonStyle.visualDensity));

Color _getElevatedButtonColorLight(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaru.Colors.green;
  } else if (states.any(disabledStates.contains)) {
    return yaru.Colors.warmGrey;
  }
  return yaru.Colors.green;
}

final _elevatedButtonThemeDataLight = ElevatedButtonThemeData(
  style: _commonButtonStyle.copyWith(
    textStyle: MaterialStateProperty.all(_textTheme.button),
    backgroundColor: MaterialStateProperty.resolveWith(
      _getElevatedButtonColorLight,
    ),
  ),
);

Color _getElevatedButtonColorDark(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  const Set<MaterialState> disabledStates = <MaterialState>{
    MaterialState.disabled
  };
  if (states.any(interactiveStates.contains)) {
    return yaru.Colors.green;
  } else if (states.any(disabledStates.contains)) {
    return yaru.Colors.disabledGreyDark;
  }
  return yaru.Colors.green;
}

final _elevatedButtonThemeDataDark = ElevatedButtonThemeData(
  style: _commonButtonStyle.copyWith(
    textStyle: MaterialStateProperty.all(_textTheme.button),
    backgroundColor: MaterialStateProperty.resolveWith(
      _getElevatedButtonColorDark,
    ),
  ),
);

// Switches
Color _getSwitchThumbColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.disabledGreyDark;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine;
    } else {
      return yaru.Colors.warmGrey;
    }
  }
}

Color _getSwitchTrackColorDark(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.disabledGreyDark.withAlpha(120);
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine.withAlpha(160);
    } else {
      return yaru.Colors.warmGrey.withAlpha(80);
    }
  }
}

final _switchStyleDark = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorDark),
  trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorDark),
);

Color _getSwitchThumbColorLight(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine;
    } else {
      return Colors.white;
    }
  }
}

Color _getSwitchTrackColorLight(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return yaru.Colors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine.withAlpha(180);
    } else {
      return yaru.Colors.warmGrey.shade300;
    }
  }
}

final _switchStyleLight = SwitchThemeData(
  thumbColor: MaterialStateProperty.resolveWith(_getSwitchThumbColorLight),
  trackColor: MaterialStateProperty.resolveWith(_getSwitchTrackColorLight),
);

// Checks
Color _getCheckFillColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine;
    }
    return yaru.Colors.warmGrey;
  }
  return yaru.Colors.disabledGreyDark;
}

Color _getCheckColorDark(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return yaru.Colors.warmGrey;
}

final _checkStyleDark = CheckboxThemeData(
  fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark),
  checkColor: MaterialStateProperty.resolveWith(_getCheckColorDark),
);

Color _getCheckFillColorLight(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return yaru.Colors.lightAubergine;
    }
    return yaru.Colors.warmGrey;
  }
  return yaru.Colors.warmGrey.shade300;
}

Color _getCheckColorLight(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return yaru.Colors.warmGrey;
}

final _checkStyleLight = CheckboxThemeData(
  fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight),
  checkColor: MaterialStateProperty.resolveWith(_getCheckColorLight),
);

// Radios
final _radioStyleDark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorDark));

final _radioStyleLight = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(_getCheckFillColorLight));

final _appBarLightTheme = AppBarTheme(
  brightness: Brightness.light,
  color: yaru.Colors.porcelain,
  textTheme: textTheme.copyWith(
    headline6: textTheme.headline6!.copyWith(
      color: yaru.Colors.coolGrey,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  ),
  iconTheme: IconThemeData(color: yaru.Colors.coolGrey),
  actionsIconTheme: IconThemeData(color: yaru.Colors.coolGrey),
);

final _appBarDarkTheme = AppBarTheme(
  brightness: Brightness.dark,
  color: yaru.Colors.inkstone,
);
