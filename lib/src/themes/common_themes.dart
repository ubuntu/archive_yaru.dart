import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/constants.dart';
import 'package:yaru/src/themes/page_transitions.dart';
import 'package:yaru_colors/yaru_colors.dart';

// AppBar

AppBarTheme _createLightAppBar(ColorScheme colorScheme) {
  return AppBarTheme(
    shape: Border(
      bottom: BorderSide(color: colorScheme.onSurface.withOpacity(0.2)),
    ),
    scrolledUnderElevation: kAppBarElevation,
    surfaceTintColor: colorScheme.background,
    toolbarHeight: kAppBarHeight,
    elevation: kAppBarElevation,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: colorScheme.background,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: createTextTheme(YaruColors.inkstone).titleLarge!.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.normal,
        ),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    actionsIconTheme: const IconThemeData(color: YaruColors.inkstone),
  );
}

AppBarTheme _createDarkAppBarTheme(ColorScheme colorScheme) {
  return AppBarTheme(
    shape: Border(
      bottom: BorderSide(color: colorScheme.onSurface.withOpacity(0.07)),
    ),
    scrolledUnderElevation: kAppBarElevation,
    surfaceTintColor: colorScheme.background,
    toolbarHeight: kAppBarHeight,
    elevation: kAppBarElevation,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    backgroundColor: colorScheme.surface,
    foregroundColor: colorScheme.onSurface,
    titleTextStyle: createTextTheme(YaruColors.porcelain).titleLarge!.copyWith(
          color: colorScheme.onSurface,
          fontWeight: FontWeight.normal,
        ),
  );
}

InputDecorationTheme _createInputDecorationTheme(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  final radius = BorderRadius.circular(kButtonRadius);
  const width = 1.0;
  final light = brightness == Brightness.light;
  final fill =
      light ? const Color(0xFFededed) : const Color.fromARGB(255, 56, 56, 56);
  final border = light
      ? const Color.fromARGB(255, 226, 226, 226)
      : const Color.fromARGB(255, 83, 83, 83);
  final disabledBorder = light
      ? const Color.fromARGB(255, 237, 237, 237)
      : const Color.fromARGB(255, 67, 67, 67);
  return InputDecorationTheme(
    filled: true,
    fillColor: fill,
    border: OutlineInputBorder(
      borderSide: BorderSide(
        width: width,
        color: border,
      ),
      borderRadius: radius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: width, color: colorScheme.primary),
      borderRadius: radius,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: width,
        color: border,
      ),
      borderRadius: radius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(width: width, color: colorScheme.error),
      borderRadius: radius,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: width, color: disabledBorder),
      borderRadius: radius,
    ),
    isDense: true,
    iconColor: colorScheme.onSurface,
    contentPadding: const EdgeInsets.all(12),
  );
}

TextSelectionThemeData _createTextSelectionTheme(ColorScheme colorScheme) {
  return TextSelectionThemeData(
    cursorColor: colorScheme.onSurface,
    selectionColor: colorScheme.primary.withOpacity(0.40),
  );
}

const _tooltipThemeData = TooltipThemeData(
  waitDuration: Duration(milliseconds: 500),
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
    side: const BorderSide(color: Colors.black38, width: 0.3),
    visualDensity: _commonButtonStyle.visualDensity,
    foregroundColor: YaruColors.textGrey,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kButtonRadius),
    ),
  ),
);

final _darkOutlinedButtonThemeData = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    side: const BorderSide(color: Colors.white38, width: 0.3),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kButtonRadius),
    ),
    visualDensity: _commonButtonStyle.visualDensity,
    foregroundColor: Colors.white,
  ),
);

TextButtonThemeData _createTextButtonThemeData(
  ColorScheme colorScheme,
) {
  return TextButtonThemeData(
    style: TextButton.styleFrom(
      iconColor: colorScheme.primary,
      foregroundColor: colorScheme.primary,
      visualDensity: _commonButtonStyle.visualDensity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
    ),
  );
}

ElevatedButtonThemeData _getElevatedButtonThemeData(Color color) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor:
          ThemeData.estimateBrightnessForColor(color) == Brightness.light
              ? Colors.black
              : Colors.white,
      visualDensity: _commonButtonStyle.visualDensity,
      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
    ),
  );
}

ToggleButtonsThemeData _createToggleButtonsTheme(ColorScheme colorScheme) {
  return ToggleButtonsThemeData(
    borderRadius: const BorderRadius.all(Radius.circular(kButtonRadius)),
    selectedColor: colorScheme.onSurface,
    fillColor: colorScheme.onSurface.withOpacity(.15),
    hoverColor: colorScheme.onSurface.withOpacity(.05),
  );
}

// Dialogs

DialogTheme _createDialogTheme(Brightness brightness) {
  final bgColor = brightness == Brightness.dark
      ? YaruColors.coolGrey
      : YaruColors.porcelain;
  return DialogTheme(
    backgroundColor: bgColor,
    surfaceTintColor: bgColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kWindowRadius),
      side: brightness == Brightness.dark
          ? BorderSide(color: Colors.white.withOpacity(0.2))
          : BorderSide.none,
    ),
  );
}

// Switches

SwitchThemeData _getSwitchThemeData(Color primaryColor, Brightness brightness) {
  return SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(
      (states) => _getSwitchThumbColor(states, primaryColor, brightness),
    ),
    trackColor: MaterialStateProperty.resolveWith(
      (states) => _getSwitchTrackColor(states, primaryColor, brightness),
    ),
  );
}

Color _getSwitchThumbColor(
  Set<MaterialState> states,
  Color selectedColor,
  Brightness brightness,
) {
  if (states.contains(MaterialState.disabled)) {
    return brightness == Brightness.dark
        ? kDisabledGreyDark
        : YaruColors.warmGrey.shade200;
  } else {
    if (states.contains(MaterialState.selected)) {
      return Colors.white;
    } else {
      return brightness == Brightness.dark ? YaruColors.warmGrey : Colors.white;
    }
  }
}

Color _getSwitchTrackColor(
  Set<MaterialState> states,
  Color selectedColor,
  Brightness brightness,
) {
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
  Set<MaterialState> states,
  Color selectedColor,
  Brightness brightness,
) {
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
  Color primaryColor,
  Brightness brightness,
) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kCheckRadius),
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckFillColor(states, primaryColor, brightness),
    ),
    checkColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckColor(states, primaryColor),
    ),
  );
}

RadioThemeData _getRadioThemeData(Color primaryColor, Brightness brightness) {
  return RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckFillColor(states, primaryColor, brightness),
    ),
  );
}

TabBarTheme _createTabBarTheme(
  ColorScheme colorScheme,
  Brightness brightness,
  Color dividerColor,
) {
  return TabBarTheme(
    labelColor: brightness == Brightness.light
        ? colorScheme.onSurface
        : Colors.white.withOpacity(0.8),
    indicatorColor: colorScheme.primary,
    dividerColor: dividerColor,
  );
}

ProgressIndicatorThemeData _createProgressIndicatorTheme(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return ProgressIndicatorThemeData(
    circularTrackColor: colorScheme.primary.withOpacity(0.3),
    linearTrackColor: colorScheme.primary.withOpacity(0.3),
    color: colorScheme.primary,
  );
}

/// Helper function to create a new Yaru light theme
ThemeData createYaruLightTheme({
  required ColorScheme colorScheme,
  required Color primaryColor,
  Color? elevatedButtonColor,
  bool? useMaterial3 = true,
}) {
  const dividerColor = Color(0xffdcdcdc);

  return ThemeData.from(
    useMaterial3: useMaterial3,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      brightness: Brightness.light,
      error: colorScheme.error,
      onPrimaryContainer: Colors.white,
    ),
  ).copyWith(
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    primaryIconTheme: IconThemeData(color: colorScheme.onSurface),
    progressIndicatorTheme:
        _createProgressIndicatorTheme(colorScheme, Brightness.light),
    pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
    tabBarTheme:
        _createTabBarTheme(colorScheme, Brightness.light, dividerColor),
    dialogTheme: _createDialogTheme(Brightness.light),
    brightness: Brightness.light,
    primaryColor: colorScheme.primary,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    dividerColor: dividerColor,
    dialogBackgroundColor: colorScheme.background,
    textTheme: createTextTheme(YaruColors.inkstone),
    indicatorColor: colorScheme.secondary,
    applyElevationOverlayColor: false,
    buttonTheme: _buttonThemeData,
    outlinedButtonTheme: _outlinedButtonThemeData,
    elevatedButtonTheme:
        _getElevatedButtonThemeData(elevatedButtonColor ?? primaryColor),
    textButtonTheme: _createTextButtonThemeData(colorScheme),
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
    inputDecorationTheme:
        _createInputDecorationTheme(colorScheme, Brightness.light),
    toggleButtonsTheme: _createToggleButtonsTheme(colorScheme),
    textSelectionTheme: _createTextSelectionTheme(colorScheme),
    dropdownMenuTheme: _createDropdownMenuTheme(colorScheme, Brightness.light),
    menuTheme: _createMenuTheme(colorScheme, Brightness.light),
    popupMenuTheme: _createPopupMenuThemeData(colorScheme, Brightness.light),
    tooltipTheme: _tooltipThemeData,
    bottomAppBarTheme: BottomAppBarTheme(color: colorScheme.surface),
  );
}

/// Helper function to create a new Yaru dark theme
ThemeData createYaruDarkTheme({
  required ColorScheme colorScheme,
  required Color primaryColor,
  Color? elevatedButtonColor,
  bool? useMaterial3 = true,
}) {
  const dividerColor = Color(0xff3a3a3a);
  return ThemeData.from(
    useMaterial3: useMaterial3,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryColor,
      error: colorScheme.error,
      brightness: Brightness.dark,
    ),
  ).copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.primary,
        highlightColor: colorScheme.primary,
        surfaceTintColor: colorScheme.primary,
      ),
    ),
    progressIndicatorTheme:
        _createProgressIndicatorTheme(colorScheme, Brightness.dark),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    primaryIconTheme: IconThemeData(color: colorScheme.onSurface),
    pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
    useMaterial3: useMaterial3,
    tabBarTheme: _createTabBarTheme(colorScheme, Brightness.dark, dividerColor),
    dialogTheme: _createDialogTheme(Brightness.dark),
    brightness: Brightness.dark,
    primaryColor: colorScheme.primary,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    dividerColor: dividerColor,
    dialogBackgroundColor: colorScheme.background,
    textTheme: createTextTheme(colorScheme.onSurface),
    indicatorColor: colorScheme.primary,
    applyElevationOverlayColor: true,
    buttonTheme: _buttonThemeData,
    textButtonTheme: _createTextButtonThemeData(colorScheme),
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
    inputDecorationTheme:
        _createInputDecorationTheme(colorScheme, Brightness.dark),
    toggleButtonsTheme: _createToggleButtonsTheme(colorScheme),
    textSelectionTheme: _createTextSelectionTheme(colorScheme),
    dropdownMenuTheme: _createDropdownMenuTheme(colorScheme, Brightness.dark),
    menuTheme: _createMenuTheme(colorScheme, Brightness.dark),
    popupMenuTheme: _createPopupMenuThemeData(colorScheme, Brightness.dark),
    tooltipTheme: _tooltipThemeData,
    bottomAppBarTheme: BottomAppBarTheme(color: colorScheme.surface),
  );
}

PopupMenuThemeData _createPopupMenuThemeData(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  final bgColor = brightness == Brightness.dark
      ? const Color.fromARGB(255, 34, 34, 34)
      : Colors.white;
  return PopupMenuThemeData(
    color: bgColor,
    surfaceTintColor: bgColor,
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: colorScheme.onSurface
            .withOpacity(brightness == Brightness.light ? 0.3 : 0.2),
        width: 1,
      ),
    ),
  );
}

MenuStyle _createMenuStyle(ColorScheme colorScheme, Brightness brightness) {
  final bgColor = brightness == Brightness.dark
      ? const Color.fromARGB(255, 34, 34, 34)
      : Colors.white;

  return MenuStyle(
    surfaceTintColor: MaterialStateColor.resolveWith((states) => bgColor),
    shape: MaterialStateProperty.resolveWith(
      (states) => RoundedRectangleBorder(
        side: BorderSide(
          color: colorScheme.onSurface
              .withOpacity(brightness == Brightness.light ? 0.3 : 0.2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    side: MaterialStateBorderSide.resolveWith(
      (states) => BorderSide(
        color: colorScheme.onSurface
            .withOpacity(brightness == Brightness.light ? 0.3 : 0.2),
        width: 1,
      ),
    ),
    elevation: MaterialStateProperty.resolveWith((states) => 1),
    backgroundColor: MaterialStateProperty.resolveWith((states) => bgColor),
  );
}

MenuThemeData _createMenuTheme(ColorScheme colorScheme, Brightness brightness) {
  return MenuThemeData(
    style: _createMenuStyle(colorScheme, brightness),
  );
}

DropdownMenuThemeData _createDropdownMenuTheme(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return DropdownMenuThemeData(
    menuStyle: _createMenuStyle(colorScheme, brightness),
  );
}
