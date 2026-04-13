import 'package:flutter/material.dart';

class CustomProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    
    canvas.drawCircle(Offset(150, 200), 100, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
