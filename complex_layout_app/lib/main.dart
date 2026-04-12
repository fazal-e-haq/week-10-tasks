import 'package:complex_layout_app/Presentation/Screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ComplexLayoutApp());
}

 class ComplexLayoutApp extends StatelessWidget {
   const ComplexLayoutApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: .dark(),
       themeMode: .dark,
       home: HomeScreen(),
     );
   }
 }
 