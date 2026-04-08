import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Widgets/responsive_widget.dart';

// Custom responsive View only for Tablet screens
class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [ResponsiveWidget(), ResponsiveWidget()],
    );
    ;
  }
}
