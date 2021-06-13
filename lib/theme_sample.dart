import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData lightThemeData = ThemeData.light();

ThemeData darkThemeData = ThemeData.dark();

ThemeData themeDataFrom = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
  primarySwatch: Colors.blue,
));
