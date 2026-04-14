import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter {
  final List<Offset> point;
  SignaturePainter(this.point);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    for (int i = 0; i < point.length - 1; i++) {
      if (point[i] != Offset.infinite && point[i + 1] != Offset.infinite) {
        path.moveTo(point[i].dx, point[i].dy);
        path.lineTo(point[i + 1].dx, point[i + 1].dy);
      }
    }
    canvas.drawPath(
      path,
      Paint()
        ..strokeWidth = 3
        ..style = .stroke
        ..color = Colors.white,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
