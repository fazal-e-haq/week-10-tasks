import 'package:complex_layout_app/Presentation/Screens/storie_page_view_screen.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                StoriePageViewScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: .all(2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.yellow, Colors.deepOrange, Colors.pink],
              begin: .bottomLeft,
              end: .topRight,
            ),
            borderRadius: .circular(100),
          ),
          child: Container(
            padding: .all(2),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: .circular(100),
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
