import 'package:flutter/material.dart';

class BarChartPainter extends CustomPainter {
  // data for bars
  final List<double> data;

  BarChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    double barWidth = size.width / data.length;

    Paint paint = Paint()..color = Colors.blue;

    // Draw bars
    for (int i = 0; i < data.length; i++) {
      double left = i * barWidth;
      double top = size.height - data[i];

      // draw rectangle (bar)
      canvas.drawRect(Rect.fromLTWH(left, top, barWidth - 5, data[i]), paint);

      //  Add labels
      TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: data[i].toInt().toString(),
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();

      textPainter.paint(canvas, Offset(left, top - 15));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
