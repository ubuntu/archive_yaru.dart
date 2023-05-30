import 'package:flutter/material.dart';
import 'package:yaru/src/colors.dart';

@Deprecated('Use YaruColorSchemeExtension instead.')
extension YaruThemeDataExtension on ThemeData {
  @Deprecated('Use ColorScheme.success instead.')
  Color get successColor => YaruColors.success;

  @Deprecated('Use ColorScheme.warning instead.')
  Color get warningColor => YaruColors.warning;
}

/// Yaru-specific color scheme extensions.
extension YaruColorSchemeExtension on ColorScheme {
  /// A color to indicate success e.g. for text input validation.
  ///
  /// ```dart
  /// Theme.of(context).colorScheme.success
  /// ```
  ///
  /// See also:
  ///  * [ColorScheme.error]
  Color get success => YaruColors.success;

  /// A color to indicate warnings.
  ///
  /// This is the counterpart of [ColorScheme.error].
  ///
  /// ```dart
  /// Theme.of(context).colorScheme.warning
  /// ```
  ///
  /// See also:
  ///  * [ColorScheme.error]
  Color get warning => YaruColors.warning;
}
