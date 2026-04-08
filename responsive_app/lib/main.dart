import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Screens/home_screen.dart';

void main() {
  runApp(const ResponsiveApp());
}

// Starting point of this app
class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: .dark,
      theme: .dark(),
      home: HomeScreen(),
    );
  }
}
