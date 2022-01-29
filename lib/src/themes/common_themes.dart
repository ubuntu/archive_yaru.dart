import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/constants.dart';

// AppBar

AppBarTheme _createLightAppBar(ColorScheme colorScheme) {
  return AppBarTheme(
    toolbarHeight: kAppBarHeight,
    elevation: kAppBarElevation,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: colorScheme.background,
    foregroundColor: colorScheme.onSurface.withOpacity(0.75),
    titleTextStyle: textTheme.headline6!.copyWith(
      color: colorScheme.onSurface.withOpacity(0.75),
      fontWeight: FontWeight.normal,
    ),
    iconTheme: IconThemeData(color: colorScheme.onBackground),
    actionsIconTheme: IconThemeData(color: colorScheme.onBackground),
  );
}

AppBarTheme _createDarkAppBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    toolbarHeight: kAppBarHeight,
    elevation: kAppBarElevation,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: colorScheme.surface,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: textTheme.headline6!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.normal,
    ),
  );
}

// Buttons

final _commonButtonStyle = ButtonStyle(visualDensity: VisualDensity.standard);

final _buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(kButtonRadius),
  ),
);

final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: _commonButtonStyle.visualDensity,
  primary: YaruColors.textGrey,
));

final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: _commonButtonStyle.visualDensity,
  primary: Colors.white,
));

final _textButtonThemeData = TextButtonThemeData(
    style:
        TextButton.styleFrom(visualDensity: _commonButtonStyle.visualDensity));

ElevatedButtonThemeData _getElevatedButtonThemeData(Color color) {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: color,
    onPrimary: Colors.white,
    visualDensity: _commonButtonStyle.visualDensity,
    elevation: 0,
  ));
}

// Dialogs

final _dialogThemeDark = DialogTheme(
    backgroundColor: YaruColors.coolGrey,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kWindowRadius),
        side: BorderSide(color: Colors.white.withOpacity(0.2))));

// Switches

SwitchThemeData _getSwitchThemeData(
    MaterialColor primaryColor, Brightness brightness) {
  return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
          (states) => _getSwitchThumbColor(states, primaryColor, brightness)),
      trackColor: MaterialStateProperty.resolveWith(
          (states) => _getSwitchTrackColor(states, primaryColor, brightness)));
}

Color _getSwitchThumbColor(Set<MaterialState> states,
    MaterialColor selectedColor, Brightness brightness) {
  if (states.contains(MaterialState.disabled)) {
    return brightness == Brightness.dark
        ? YaruColors.disabledGreyDark
        : YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return selectedColor;
    } else {
      return brightness == Brightness.dark ? YaruColors.warmGrey : Colors.white;
    }
  }
}

Color _getSwitchTrackColor(Set<MaterialState> states,
    MaterialColor selectedColor, Brightness brightness) {
  if (states.contains(MaterialState.disabled)) {
    return brightness == Brightness.dark
        ? YaruColors.disabledGreyDark.withAlpha(120)
        : YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return brightness == Brightness.dark
          ? selectedColor.withAlpha(160)
          : selectedColor.withAlpha(180);
    } else {
      return brightness == Brightness.dark
          ? YaruColors.warmGrey.withAlpha(80)
          : YaruColors.warmGrey.shade300;
    }
  }
}

// Checks & Radios

Color _getCheckFillColor(Set<MaterialState> states, MaterialColor selectedColor,
    Brightness brightness) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return selectedColor;
    }
    return brightness == Brightness.dark
        ? YaruColors.warmGrey.shade400
        : YaruColors.warmGrey;
  }
  return brightness == Brightness.dark
      ? YaruColors.warmGrey.withOpacity(0.4)
      : YaruColors.warmGrey.shade300;
}

Color _getCheckColor(Set<MaterialState> states) {
  if (!states.contains(MaterialState.disabled)) {
    return Colors.white;
  }
  return YaruColors.warmGrey;
}

CheckboxThemeData _getCheckBoxThemeData(
    MaterialColor primaryColor, Brightness brightness) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kCheckRadius),
    ),
    fillColor: MaterialStateProperty.resolveWith(
        (states) => _getCheckFillColor(states, primaryColor, brightness)),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColor),
  );
}

RadioThemeData _getRadioThemeData(
    MaterialColor primaryColor, Brightness brightness) {
  return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
          (states) => _getCheckFillColor(states, primaryColor, brightness)));
}

/// Helper function to create a new Yaru light theme
ThemeData createYaruLightTheme(
    {required ColorScheme colorScheme,
    required MaterialColor primaryColor,
    Color? elevatedButtonColor}) {
  return ThemeData(
      tabBarTheme: TabBarTheme(labelColor: colorScheme.onSurface),
      brightness: Brightness.light,
      primaryColor: colorScheme.primary,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      bottomAppBarColor: colorScheme.surface,
      cardColor: colorScheme.surface,
      dividerColor: colorScheme.onSurface.withOpacity(0.12),
      backgroundColor: colorScheme.background,
      dialogBackgroundColor: colorScheme.background,
      errorColor: colorScheme.error,
      textTheme: textTheme,
      indicatorColor: colorScheme.secondary,
      applyElevationOverlayColor: false,
      colorScheme: colorScheme,
      buttonTheme: _buttonThemeData,
      outlinedButtonTheme: _outlinedButtonThemeData,
      elevatedButtonTheme:
          _getElevatedButtonThemeData(elevatedButtonColor ?? primaryColor),
      textButtonTheme: _textButtonThemeData,
      switchTheme: _getSwitchThemeData(primaryColor, Brightness.light),
      checkboxTheme: _getCheckBoxThemeData(primaryColor, Brightness.light),
      radioTheme: _getRadioThemeData(primaryColor, Brightness.light),
      appBarTheme: _createLightAppBar(colorScheme),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: elevatedButtonColor ?? primaryColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurface.withOpacity(0.8),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(),
      ));
}

/// Helper function to create a new Yaru dark theme
ThemeData createYaruDarkTheme(
    {required ColorScheme colorScheme,
    required MaterialColor primaryColor,
    Color? elevatedButtonColor}) {
  return ThemeData(
    tabBarTheme: TabBarTheme(labelColor: colorScheme.onBackground),
    dialogTheme: _dialogThemeDark,
    brightness: Brightness.dark,
    primaryColor: colorScheme.primary,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    bottomAppBarColor: colorScheme.surface,
    cardColor: colorScheme.surface,
    dividerColor: colorScheme.onSurface.withOpacity(0.12),
    backgroundColor: colorScheme.background,
    dialogBackgroundColor: colorScheme.background,
    errorColor: colorScheme.error,
    textTheme: textTheme,
    indicatorColor: colorScheme.secondary,
    applyElevationOverlayColor: true,
    colorScheme: colorScheme,
    buttonTheme: _buttonThemeData,
    textButtonTheme: _textButtonThemeData,
    elevatedButtonTheme:
        _getElevatedButtonThemeData(elevatedButtonColor ?? primaryColor),
    outlinedButtonTheme: _darkOutlinedButtonThemeData,
    switchTheme: _getSwitchThemeData(primaryColor, Brightness.dark),
    checkboxTheme: _getCheckBoxThemeData(primaryColor, Brightness.dark),
    radioTheme: _getRadioThemeData(primaryColor, Brightness.dark),
    primaryColorDark: primaryColor,
    appBarTheme: _createDarkAppBarTheme(colorScheme),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: elevatedButtonColor ?? primaryColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onBackground.withOpacity(0.8),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}
