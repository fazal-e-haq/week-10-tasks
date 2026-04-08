import 'package:flutter/material.dart';

/*
Reusable widget
Used on:
 Mobile
 Tablet
 Desktop

Note:
Only use inside Row/Column widget because of Expanded widget
*/
class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: .symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: .circular(10),
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
