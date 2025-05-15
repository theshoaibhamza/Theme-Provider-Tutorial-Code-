// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

// Light Theme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      surface: Colors.white, primary: Colors.black, secondary: Colors.white),
);

// Dark Theme
ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: Colors.black, primary: Colors.white, secondary: Colors.black));

ThemeData _data = ThemeData.dark();
