import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yaru/src/text/text_theme.dart';
import 'package:yaru/src/themes/constants.dart';
import 'package:yaru/src/themes/page_transitions.dart';
import 'package:yaru_colors/yaru_colors.dart';

const kDividerColorDark = Color(0xff3a3a3a);
const kDividerColorLight = Color(0xffdcdcdc);

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

ElevatedButtonThemeData _getElevatedButtonThemeData({
  required Color color,
  Color? textColor,
}) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      foregroundColor: textColor ?? contrastColor(color),
      visualDensity: _commonButtonStyle.visualDensity,
      elevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
    ),
  );
}

FilledButtonThemeData _getFilledButtonThemeData(
  Color backgroundColor,
  Color foregroundColor,
) {
  return FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: backgroundColor.withOpacity(0.3),
      foregroundColor: foregroundColor,
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

SwitchThemeData _getSwitchThemeData(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return SwitchThemeData(
    thumbColor: MaterialStateProperty.resolveWith(
      (states) => _getSwitchThumbColor(states, colorScheme, brightness),
    ),
    trackColor: MaterialStateProperty.resolveWith(
      (states) => _getSwitchTrackColor(states, colorScheme, brightness),
    ),
  );
}

Color _getSwitchThumbColor(
  Set<MaterialState> states,
  ColorScheme colorScheme,
  Brightness brightness,
) {
  if (states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return colorScheme.onSurface.withOpacity(0.5);
    }
    return colorScheme.onSurface.withOpacity(0.5);
  } else {
    if (states.contains(MaterialState.selected)) {
      return Colors.white;
    } else {
      return colorScheme.onSurface.withOpacity(0.7);
    }
  }
}

Color _getSwitchTrackColor(
  Set<MaterialState> states,
  ColorScheme colorScheme,
  Brightness brightness,
) {
  if (states.contains(MaterialState.disabled)) {
    return colorScheme.onSurface.withOpacity(0.15);
  } else {
    if (states.contains(MaterialState.selected)) {
      return colorScheme.primary;
    } else {
      return brightness == Brightness.dark
          ? kDividerColorDark
          : kDividerColorLight;
    }
  }
}

// Checks & Radios

Color _getCheckFillColor(
  Set<MaterialState> states,
  ColorScheme colorScheme,
  Brightness brightness,
) {
  if (!states.contains(MaterialState.disabled)) {
    if (states.contains(MaterialState.selected)) {
      return colorScheme.primary;
    }
    return colorScheme.onSurface.withOpacity(0.75);
  }
  if (states.contains(MaterialState.selected)) {
    return colorScheme.onSurface.withOpacity(0.2);
  }
  return colorScheme.onSurface.withOpacity(0.2);
}

Color _getCheckColor(Set<MaterialState> states, ColorScheme colorScheme) {
  if (!states.contains(MaterialState.disabled)) {
    return ThemeData.estimateBrightnessForColor(colorScheme.primary) ==
            Brightness.light
        ? Colors.black
        : Colors.white;
  }
  return YaruColors.warmGrey;
}

CheckboxThemeData _getCheckBoxThemeData(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kCheckRadius),
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckFillColor(states, colorScheme, brightness),
    ),
    checkColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckColor(states, colorScheme),
    ),
  );
}

RadioThemeData _getRadioThemeData(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith(
      (states) => _getCheckFillColor(states, colorScheme, brightness),
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
  required Color primaryColor,
  Color? elevatedButtonColor,
  Color? elevatedButtonTextColor,
  bool? useMaterial3 = true,
}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    error: YaruColors.error,
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: contrastColor(primaryColor),
    primaryContainer: YaruColors.porcelain,
    onPrimaryContainer: YaruColors.inkstone,
    inversePrimary: YaruColors.inkstone,
    secondary: elevatedButtonColor ?? primaryColor,
    onSecondary: contrastColor(elevatedButtonColor ?? primaryColor),
    secondaryContainer:
        elevatedButtonColor?.withOpacity(0.4) ?? primaryColor.withOpacity(0.4),
    onSecondaryContainer: elevatedButtonTextColor ?? YaruColors.jet,
    background: Colors.white,
    onBackground: YaruColors.inkstone,
    surface: YaruColors.porcelain,
    onSurface: YaruColors.inkstone,
    inverseSurface: YaruColors.jet,
    onInverseSurface: YaruColors.porcelain,
    surfaceTint: YaruColors.warmGrey,
    surfaceVariant: YaruColors.warmGrey,
    tertiary: const Color(0xFF18b6ec),
    onTertiary: Colors.white,
    tertiaryContainer: const Color(0xFF18b6ec),
    onTertiaryContainer: Colors.white,
    onSurfaceVariant: YaruColors.coolGrey,
    outline: kDividerColorLight,
    scrim: Colors.black,
  );

  return ThemeData.from(
    useMaterial3: useMaterial3,
    colorScheme: colorScheme,
  ).copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        highlightColor: colorScheme.onSurface.withOpacity(0.05),
        surfaceTintColor: colorScheme.background,
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    primaryIconTheme: IconThemeData(color: colorScheme.onSurface),
    progressIndicatorTheme:
        _createProgressIndicatorTheme(colorScheme, Brightness.light),
    pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
    tabBarTheme:
        _createTabBarTheme(colorScheme, Brightness.light, kDividerColorLight),
    dialogTheme: _createDialogTheme(Brightness.light),
    brightness: Brightness.light,
    primaryColor: colorScheme.primary,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    dividerColor: kDividerColorLight,
    dialogBackgroundColor: colorScheme.background,
    textTheme: createTextTheme(YaruColors.inkstone),
    indicatorColor: colorScheme.secondary,
    applyElevationOverlayColor: false,
    buttonTheme: _buttonThemeData,
    outlinedButtonTheme: _outlinedButtonThemeData,
    elevatedButtonTheme: _getElevatedButtonThemeData(
      color: elevatedButtonColor ?? primaryColor,
      textColor: elevatedButtonTextColor,
    ),
    filledButtonTheme: _getFilledButtonThemeData(
      elevatedButtonColor ?? primaryColor,
      colorScheme.onSurface,
    ),
    textButtonTheme: _createTextButtonThemeData(colorScheme),
    switchTheme: _getSwitchThemeData(colorScheme, Brightness.light),
    checkboxTheme: _getCheckBoxThemeData(colorScheme, Brightness.light),
    radioTheme: _getRadioThemeData(colorScheme, Brightness.light),
    appBarTheme: _createLightAppBar(colorScheme),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: elevatedButtonColor ?? primaryColor,
      foregroundColor: contrastColor(elevatedButtonColor ?? primaryColor),
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
    navigationBarTheme:
        _createNavigationBarTheme(colorScheme, Brightness.light),
    navigationRailTheme:
        _createNavigationRailTheme(colorScheme, Brightness.light),
    dividerTheme: const DividerThemeData(
      color: kDividerColorLight,
    ),
    badgeTheme: BadgeThemeData(
      backgroundColor: elevatedButtonColor ?? colorScheme.primary,
      textColor: contrastColor(elevatedButtonColor ?? primaryColor),
    ),
  );
}

/// Helper function to create a new Yaru dark theme
ThemeData createYaruDarkTheme({
  required Color primaryColor,
  Color? elevatedButtonColor,
  Color? elevatedButtonTextColor,
  bool? useMaterial3 = true,
  bool highContrast = false,
}) {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    error: YaruColors.error,
    brightness: Brightness.dark,
    primary: primaryColor,
    primaryContainer: YaruColors.coolGrey,
    onPrimary: contrastColor(primaryColor),
    onPrimaryContainer: YaruColors.porcelain,
    inversePrimary: YaruColors.porcelain,
    secondary: elevatedButtonColor ?? primaryColor,
    onSecondary: contrastColor(elevatedButtonColor ?? primaryColor),
    secondaryContainer:
        elevatedButtonColor?.withOpacity(0.4) ?? primaryColor.withOpacity(0.4),
    onSecondaryContainer:
        highContrast ? Colors.white : (elevatedButtonTextColor ?? Colors.white),
    background: YaruColors.jet,
    onBackground: YaruColors.porcelain,
    surface: YaruColors.jet,
    onSurface: YaruColors.porcelain,
    inverseSurface: YaruColors.porcelain,
    onInverseSurface: YaruColors.inkstone,
    surfaceTint: YaruColors.coolGrey,
    surfaceVariant: YaruColors.inkstone,
    tertiary: const Color(0xFF18b6ec),
    onTertiary: YaruColors.porcelain,
    tertiaryContainer: const Color(0xFF18b6ec),
    onTertiaryContainer: YaruColors.porcelain,
    onSurfaceVariant: YaruColors.warmGrey,
    outline: kDividerColorDark,
    scrim: Colors.black,
  );
  return ThemeData.from(
    useMaterial3: useMaterial3,
    colorScheme: colorScheme,
  ).copyWith(
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: colorScheme.onSurface,
        highlightColor: colorScheme.onSurface.withOpacity(0.05),
        surfaceTintColor: colorScheme.background,
      ),
    ),
    progressIndicatorTheme:
        _createProgressIndicatorTheme(colorScheme, Brightness.dark),
    iconTheme: IconThemeData(color: colorScheme.onSurface),
    primaryIconTheme: IconThemeData(color: colorScheme.onSurface),
    pageTransitionsTheme: YaruPageTransitionsTheme.horizontal,
    useMaterial3: useMaterial3,
    tabBarTheme:
        _createTabBarTheme(colorScheme, Brightness.dark, kDividerColorDark),
    dialogTheme: _createDialogTheme(Brightness.dark),
    brightness: Brightness.dark,
    primaryColor: colorScheme.primary,
    canvasColor: colorScheme.background,
    scaffoldBackgroundColor: colorScheme.background,
    cardColor: colorScheme.surface,
    dividerColor: kDividerColorDark,
    dialogBackgroundColor: colorScheme.background,
    textTheme: createTextTheme(colorScheme.onSurface),
    indicatorColor: colorScheme.primary,
    applyElevationOverlayColor: true,
    buttonTheme: _buttonThemeData,
    textButtonTheme: _createTextButtonThemeData(colorScheme),
    filledButtonTheme: _getFilledButtonThemeData(
      elevatedButtonColor ?? primaryColor,
      colorScheme.onSurface,
    ),
    elevatedButtonTheme: _getElevatedButtonThemeData(
      color: elevatedButtonColor ?? primaryColor,
      textColor: elevatedButtonTextColor,
    ),
    outlinedButtonTheme: _darkOutlinedButtonThemeData,
    switchTheme: _getSwitchThemeData(colorScheme, Brightness.dark),
    checkboxTheme: _getCheckBoxThemeData(colorScheme, Brightness.dark),
    radioTheme: _getRadioThemeData(colorScheme, Brightness.dark),
    primaryColorDark: primaryColor,
    appBarTheme: _createDarkAppBarTheme(colorScheme),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: elevatedButtonColor ?? primaryColor,
      foregroundColor: contrastColor(elevatedButtonColor ?? primaryColor),
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
    navigationBarTheme: _createNavigationBarTheme(colorScheme, Brightness.dark),
    navigationRailTheme:
        _createNavigationRailTheme(colorScheme, Brightness.dark),
    dividerTheme: const DividerThemeData(
      color: kDividerColorDark,
    ),
    badgeTheme: BadgeThemeData(
      backgroundColor: elevatedButtonColor ?? colorScheme.primary,
      textColor: contrastColor(elevatedButtonColor ?? primaryColor),
    ),
  );
}

Color contrastColor(Color color) => ThemeData.estimateBrightnessForColor(
          color,
        ) ==
        Brightness.light
    ? Colors.black
    : Colors.white;

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
    inputDecorationTheme: _createInputDecorationTheme(colorScheme, brightness),
    menuStyle: _createMenuStyle(colorScheme, brightness),
  );
}

NavigationBarThemeData _createNavigationBarTheme(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return NavigationBarThemeData(
    backgroundColor: colorScheme.background,
    surfaceTintColor: colorScheme.background,
    indicatorColor: colorScheme.onSurface.withOpacity(0.1),
    iconTheme: MaterialStateProperty.resolveWith(
      (states) => states.contains(MaterialState.selected)
          ? IconThemeData(color: colorScheme.onSurface)
          : IconThemeData(color: colorScheme.onSurface.withOpacity(0.8)),
    ),
  );
}

NavigationRailThemeData _createNavigationRailTheme(
  ColorScheme colorScheme,
  Brightness brightness,
) {
  return NavigationRailThemeData(
    backgroundColor: colorScheme.background,
    indicatorColor: colorScheme.onSurface.withOpacity(0.1),
    selectedIconTheme: IconThemeData(color: colorScheme.onSurface),
    unselectedIconTheme: IconThemeData(
      color: colorScheme.onSurface.withOpacity(0.8),
    ),
  );
}
