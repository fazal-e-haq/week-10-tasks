import 'package:custom_paint_app/Presentation/Widgets/custom_progress_painter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.blueAccent,
            child: CustomPaint(
              painter: CustomProgressPainter(),
              size: Size(300, 400),
            ),
          ),
        ),
      ),
    );
  }
}
