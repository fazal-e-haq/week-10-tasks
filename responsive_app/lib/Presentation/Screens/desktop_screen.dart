import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Widgets/responsive_widget.dart';

// Custom responsive View only for Desktop screens
class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [ResponsiveWidget(), ResponsiveWidget(), ResponsiveWidget()],
    );
  }
}
