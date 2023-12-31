import 'package:flutter/material.dart';

const colorList = <MaterialColor>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.pink,
  Colors.orange,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Colors.lime,
  Colors.indigo,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selectedColor must be less than 0'),
        assert(selectedColor < colorList.length,
            'selectedColor must be less than ${colorList.length - 1}');

  ThemeData getThemeData() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
