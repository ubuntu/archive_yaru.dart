import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/colors/yaru_colors.dart';
import 'package:yaru/src/themes/constants.dart';

// AppBar

final appBarLightTheme = AppBarTheme(
  elevation: appBarElevation,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  backgroundColor: YaruColors.porcelain,
  foregroundColor: YaruColors.coolGrey,
  titleTextStyle: textTheme.headline6!.copyWith(
    color: YaruColors.coolGrey,
    fontWeight: FontWeight.normal,
  ),
  iconTheme: IconThemeData(color: YaruColors.coolGrey),
  actionsIconTheme: IconThemeData(color: YaruColors.coolGrey),
);

final appBarDarkTheme = AppBarTheme(
  elevation: appBarElevation,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  backgroundColor: YaruColors.jet,
  foregroundColor: YaruColors.porcelain,
  titleTextStyle: textTheme.headline6!.copyWith(
    color: YaruColors.porcelain,
    fontWeight: FontWeight.normal,
  ),
);

// Buttons

final commonButtonStyle = ButtonStyle(visualDensity: VisualDensity.standard);

final buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(buttonRadius),
  ),
);

final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: commonButtonStyle.visualDensity,
  primary: YaruColors.textGrey,
));

final darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  visualDensity: commonButtonStyle.visualDensity,
  primary: Colors.white,
));

final textButtonThemeData = TextButtonThemeData(
    style:
        TextButton.styleFrom(visualDensity: commonButtonStyle.visualDensity));

ElevatedButtonThemeData getElevatedButtonThemeData(Color color) {
  return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: color,
    onPrimary: Colors.white,
    visualDensity: commonButtonStyle.visualDensity,
    elevation: 0,
  ));
}

// Dialogs

final dialogThemeDark = DialogTheme(
    backgroundColor: YaruColors.coolGrey,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(windowRadius),
        side: BorderSide(color: Colors.white.withOpacity(0.2))));

// Switches

SwitchThemeData getSwitchThemeData(
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

CheckboxThemeData getCheckBoxThemeData(
    MaterialColor primaryColor, Brightness brightness) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(checkRadius),
    ),
    fillColor: MaterialStateProperty.resolveWith(
        (states) => _getCheckFillColor(states, primaryColor, brightness)),
    checkColor: MaterialStateProperty.resolveWith(_getCheckColor),
  );
}

RadioThemeData getRadioThemeData(
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
      buttonTheme: buttonThemeData,
      outlinedButtonTheme: outlinedButtonThemeData,
      elevatedButtonTheme:
          getElevatedButtonThemeData(elevatedButtonColor ?? primaryColor),
      textButtonTheme: textButtonThemeData,
      switchTheme: getSwitchThemeData(primaryColor, Brightness.light),
      checkboxTheme: getCheckBoxThemeData(primaryColor, Brightness.light),
      radioTheme: getRadioThemeData(primaryColor, Brightness.light),
      appBarTheme: appBarLightTheme,
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
    dialogTheme: dialogThemeDark,
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
    buttonTheme: buttonThemeData,
    textButtonTheme: textButtonThemeData,
    elevatedButtonTheme:
        getElevatedButtonThemeData(elevatedButtonColor ?? primaryColor),
    outlinedButtonTheme: darkOutlinedButtonThemeData,
    switchTheme: getSwitchThemeData(primaryColor, Brightness.dark),
    checkboxTheme: getCheckBoxThemeData(primaryColor, Brightness.dark),
    radioTheme: getRadioThemeData(primaryColor, Brightness.dark),
    primaryColorDark: primaryColor,
    appBarTheme: appBarDarkTheme,
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
