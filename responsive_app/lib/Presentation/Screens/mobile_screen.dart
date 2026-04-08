import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Widgets/responsive_widget.dart';

// Custom responsive View only for Mobiles screens
class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [ResponsiveWidget()]);
  }
}
