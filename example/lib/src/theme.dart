import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart' as yaru;

abstract class SelectedTheme {
  ThemeData get theme;
  String get name;
  static Set<SelectedTheme> get values {
    return {
      _Standard(),
      _Dark(),
      _Light(),
    };
  }

  factory SelectedTheme.standard() => _Standard();
  factory SelectedTheme.dark() => _Dark();
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
