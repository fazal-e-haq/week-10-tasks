import 'package:flutter/material.dart';
import 'dart:math';

class ClockPainter extends CustomPainter {

  final double value; // 0 → 1

  ClockPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {

    final center = size.center(Offset.zero);

    // FIX: prevent overflow
    final radius = (size.width / 2) - 10;

    // draw circle
    final circlePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawCircle(center, radius, circlePaint);

    // convert animation to angle
    final angle = 2 * pi * value;

    // calculate hand position
    final hand = Offset(
      center.dx + radius * cos(angle - pi / 2),
      center.dy + radius * sin(angle - pi / 2),
    );

    // draw hand
    final handPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;

    canvas.drawLine(center, hand, handPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}