import 'package:custom_paint_app/Presentation/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CustomPaint());
}

class CustomPaint extends StatelessWidget {
  const CustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: .dark(),
      themeMode: .dark,

      home: HomeScreen(),
    );
  }
}
