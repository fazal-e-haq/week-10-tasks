import 'package:custom_paint_app/Presentation/Widgets/bar_chart_painter.dart';
import 'package:custom_paint_app/Presentation/Widgets/clock_painter.dart';
import 'package:custom_paint_app/Presentation/Widgets/custom_progress_painter.dart';
import 'package:custom_paint_app/Presentation/Widgets/signature_painter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Offset> points = [];
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );

    controller.repeat(); // start animation
  }

  @override
  void dispose() {
    controller.dispose(); // FIX: prevent memory leak
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom paint App')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // CustomProgressPainter
                Container(
                  margin: .symmetric(vertical: 50),
                  color: Colors.blueAccent,
                  child: CustomPaint(
                    painter: CustomProgressPainter(),
                    size: Size(300, 400),
                  ),
                ),
                // SignaturePainter
                Container(
                  color: Colors.grey,
                  child: GestureDetector(
                    onPanUpdate: (details) {
                      setState(() {
                        points.add(details.localPosition);
                      });
                    },
                    onPanEnd: (details) {
                      points.add(Offset.infinite);
                    },
                    child: CustomPaint(
                      size: Size(300, 400),
                      painter: SignaturePainter(points),
                    ),
                  ),
                ),
                //  BarChartPainter
                Container(
                  margin: .symmetric(vertical: 20),
                  color: Colors.blueGrey,
                  child: CustomPaint(
                    size: Size(300, 400),
                    painter: BarChartPainter([222, 20, 30, 40, 55]),
                  ),
                ),
                // ClockPainter
                Container(
                  margin: .symmetric(vertical: 20),
                  color: Colors.orange.shade100,
                  child: AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) => CustomPaint(
                      size: Size(300, 400),
                      painter: ClockPainter(controller.value),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
