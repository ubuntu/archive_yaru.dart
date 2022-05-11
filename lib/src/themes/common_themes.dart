import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru_colors/yaru_colors.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/constants.dart';

// AppBar

AppBarTheme _createLightAppBar(ColorScheme colorScheme) {
  return AppBarTheme(
    toolbarHeight: kAppBarHeight,
    elevation: kAppBarElevation,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: colorScheme.background,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: textTheme.headline6!.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.normal,
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    actionsIconTheme: const IconThemeData(color: YaruColors.inkstone),
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

final inputDecorationTheme = InputDecorationTheme(
  border:
      OutlineInputBorder(borderRadius: BorderRadius.circular(kButtonRadius)),
  isDense: true,
);

// Buttons

const _commonButtonStyle = ButtonStyle(visualDensity: VisualDensity.standard);

final _buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(kButtonRadius),
  ),
);

final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: _commonButtonStyle.visualDensity,
  primary: YaruColors.textGrey,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(kButtonRadius),
  ),
));

final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(kButtonRadius),
  ),
  visualDensity: _commonButtonStyle.visualDensity,
  primary: Colors.white,
));

final _textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    visualDensity: _commonButtonStyle.visualDensity,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kButtonRadius),
    ),
  ),
);

ElevatedButtonThemeData _getElevatedButtonThemeData(Color color) {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: color,
    onPrimary: ThemeData.estimateBrightnessForColor(color) == Brightness.light
        ? Colors.black
        : Colors.white,
    visualDensity: _commonButtonStyle.visualDensity,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kButtonRadius),
    ),
  ));
}

const _toggleButtonsTheme = ToggleButtonsThemeData(
    borderRadius: BorderRadius.all(Radius.circular(kButtonRadius)));

// Dialogs

final _dialogThemeDark = DialogTheme(
    backgroundColor: YaruColors.coolGrey,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kWindowRadius),
        side: BorderSide(color: Colors.white.withOpacity(0.2))));

final _dialogThemeLight = DialogTheme(
    shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(kWindowRadius),
));

// Switches

SwitchThemeData _getSwitchThemeData(Color primaryColor, Brightness brightness) {
  return SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith(
          (states) => _getSwitchThumbColor(states, primaryColor, brightness)),
      trackColor: MaterialStateProperty.resolveWith(
          (states) => _getSwitchTrackColor(states, primaryColor, brightness)));
}

Color _getSwitchThumbColor(
    Set<MaterialState> states, Color selectedColor, Brightness brightness) {
  if (states.contains(MaterialState.disabled)) {
    return brightness == Brightness.dark
        ? kDisabledGreyDark
        : YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return selectedColor;
    } else {
      return brightness == Brightness.dark ? YaruColors.warmGrey : Colors.white;
    }
  }
}

Color _getSwitchTrackColor(
    Set<MaterialState> states, Color selectedColor, Brightness brightness) {
  if (states.contains(MaterialState.disabled)) {
    return brightness == Brightness.dark
        ? kDisabledGreyDark.withAlpha(120)
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

Color _getCheckFillColor(
    Set<MaterialState> states, Color selectedColor, Brightness brightness) {
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

Color _getCheckColor(Set<MaterialState> states, Color color) {
  if (!states.contains(MaterialState.disabled)) {
    return ThemeData.estimateBrightnessForColor(color) == Brightness.light
        ? Colors.black
        : Colors.white;
  }
  return YaruColors.warmGrey;
}

CheckboxThemeData _getCheckBoxThemeData(
    Color primaryColor, Brightness brightness) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kCheckRadius),
    ),
    fillColor: MaterialStateProperty.resolveWith(
        (states) => _getCheckFillColor(states, primaryColor, brightness)),
    checkColor: MaterialStateProperty.resolveWith(
        (states) => _getCheckColor(states, primaryColor)),
  );
}

RadioThemeData _getRadioThemeData(Color primaryColor, Brightness brightness) {
  return RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
          (states) => _getCheckFillColor(states, primaryColor, brightness)));
}

/// Helper function to create a new Yaru light theme
ThemeData createYaruLightTheme(
    {required ColorScheme colorScheme,
    required Color primaryColor,
    Color? elevatedButtonColor}) {
  return ThemeData(
    tabBarTheme: TabBarTheme(labelColor: colorScheme.onSurface),
    dialogTheme: _dialogThemeLight,
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
    inputDecorationTheme: inputDecorationTheme,
    toggleButtonsTheme: _toggleButtonsTheme,
  );
}

/// Helper function to create a new Yaru dark theme
ThemeData createYaruDarkTheme(
    {required ColorScheme colorScheme,
    required Color primaryColor,
    Color? elevatedButtonColor}) {
  return ThemeData(
    tabBarTheme: TabBarTheme(labelColor: Colors.white.withOpacity(0.8)),
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
      unselectedItemColor: Colors.white.withOpacity(0.8),
    ),
    inputDecorationTheme: inputDecorationTheme,
    toggleButtonsTheme: _toggleButtonsTheme,
  );
}
