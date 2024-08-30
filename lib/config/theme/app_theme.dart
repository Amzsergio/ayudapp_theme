import 'package:flutter/material.dart';

final List<Color> colorThemeOptions = [
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.cyan,
];

class AppTheme {
  final bool isDarkmode;
  final int selectedColor;

  AppTheme({
    this.isDarkmode = false,
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'The selected color must be greater than 0'),
        assert(selectedColor < colorThemeOptions.length,
            'The selected color must be smaller than ${colorThemeOptions.length - 1}');

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorThemeOptions[selectedColor],
        brightness: isDarkmode ? Brightness.dark : Brightness.light,
        appBarTheme: const AppBarTheme(centerTitle: true),
      );
}
