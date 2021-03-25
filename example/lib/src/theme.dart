import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart' as yaru;

/// an `enum-like` class to facilitate `Yaru` themes in the state management
abstract class SelectedTheme {
  /// provides a ThemeData from `Yaru` package
  ThemeData get theme;

  /// provides a human readable identifier for the `theme`
  String get name;

  /// provides list of `themes`
  static Set<SelectedTheme> get values {
    return {
      _Standard(),
      _Dark(),
      _Light(),
    };
  }

  /// a factory for a `SelectedTheme` that holds `yaru.theme`
  factory SelectedTheme.standard() => _Standard();

  /// a factory for a `SelectedTheme` that holds `yaru.darkTheme`
  factory SelectedTheme.dark() => _Dark();

  /// a factory for a `SelectedTheme` that holds `yaru.lightTheme`
  factory SelectedTheme.light() => _Light();
}

class _Standard implements SelectedTheme {
  @override
  final name = 'standard';

  @override
  final theme = yaru.theme;
}

class _Dark implements SelectedTheme {
  @override
  final name = 'dark';

  @override
  final theme = yaru.darkTheme;
}

class _Light implements SelectedTheme {
  @override
  final name = 'light';

  @override
  final theme = yaru.lightTheme;
}
