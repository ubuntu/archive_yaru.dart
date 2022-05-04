import 'package:flutter/material.dart';
import 'package:yaru_colors/yaru_colors.dart';

/// Yaru-specific theming extensions.
extension YaruThemeDataExtension on ThemeData {
  /// A color to indicate success e.g. for text input validation.
  ///
  /// ```dart
  /// Theme.of(context).successColor
  /// ```
  ///
  /// See also:
  ///  * [ThemeData.errorColor]
  Color get successColor => YaruColors.success;

  /// A color to indicate warnings.
  ///
  /// This is the counterpart of [ThemeData.errorColor].
  ///
  /// ```dart
  /// Theme.of(context).warningColor
  /// ```
  ///
  /// See also:
  ///  * [ThemeData.errorColor]
  Color get warningColor => YaruColors.warning;
}
