import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChangerProvider extends ChangeNotifier {
  // Constructor
  ThemeChangerProvider() {
    loadTheme();
  }

  bool isdark = false;
  // it decide which theme will show on screen
  ThemeMode get themeMode => isdark ? ThemeMode.dark : ThemeMode.light;
  // method for theme change and store. Light to dark and dark to light and it will store theme in local db
  Future<void> toggleTheme() async {
    isdark = !isdark;
    final sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setBool('isDark', isdark);
    notifyListeners();
  }

  // this method get which theme is enabled last time and it will load
  void loadTheme() async {
    final sharedPref = await SharedPreferences.getInstance();
    isdark = sharedPref.getBool('isDark') ?? false;
    notifyListeners();
  }
}
