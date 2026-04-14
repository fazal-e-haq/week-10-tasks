import 'dart:math';

import 'package:flutter/material.dart';

class CustomProgressPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.color = Colors.white;
    canvas.drawCircle(Offset(150, 200), 100, paint);
    canvas.drawArc(
      Rect.fromCircle(center: .new(150, 200), radius: 96),
      -pi / 2,
      2 * pi * 0.7,
      false,
      Paint()
        ..color = Colors.black87
        ..style = .stroke
        ..strokeWidth = 8,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
