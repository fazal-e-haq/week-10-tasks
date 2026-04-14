import 'package:flutter/material.dart';

// Some examples of copyWith class
ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white70,
  appBarTheme: AppBarTheme(backgroundColor: Colors.lightBlueAccent),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.lightBlueAccent,
  ),
);
