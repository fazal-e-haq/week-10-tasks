import 'package:flutter/material.dart';
import 'package:responsive_app/Presentation/Screens/desktop_screen.dart';
import 'package:responsive_app/Presentation/Screens/mobile_screen.dart';
import 'package:responsive_app/Presentation/Screens/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // AppBar
      appBar: buildAppBar(size),
      // Body
      body: SafeArea(
        // For responsiveness here using LayoutBuilder
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Show mobile view if pixels is less than 600
            if (constraints.maxWidth < 600) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                // This is Custom widget for Mobile view only
                child: MobileScreen(),
              );
            }
            // Show Tablet view if pixels is less than 1200
            else if (constraints.maxWidth < 1200) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26),
                // This is Custom widget for Tablet view only
                child: TabletScreen(),
              );
            }
            // Show Desktop view if pixels is greater than 1200
            else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 144),
                // This is Custom widget for Desktop view only
                child: DesktopScreen(),
              );
            }
          },
        ),
      ),
    );
  }

  // Responsive app bar for each view
  AppBar buildAppBar(Size size) {
    return AppBar(
      title: size.width < 600
          ? Text('Mobile View')
          : size.width < 1200
          ? Text('Tablet View')
          : Text('Desktop View'),
    );
  }
}
