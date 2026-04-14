import 'package:flutter/material.dart';

// Some examples of copyWith class
ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.white10,
  appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blueAccent,
  ),
);
