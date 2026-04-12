import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/Presentation/Screens/home_screen.dart';
import 'package:theme_app/Providers/theme_changer_provider.dart';
import 'package:theme_app/dark_theme.dart';
import 'package:theme_app/light_theme.dart';

void main() {
  runApp(
    // Theme provider
    ChangeNotifierProvider(
      create: (context) => ThemeChangerProvider(),
      child: Main(),
    ),
  );
}

class Main extends StatelessWidget {
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeChangerProvider>(context).themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeScreen(),
    );
  }
}
