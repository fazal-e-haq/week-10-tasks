import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriePageViewScreen extends StatelessWidget {
  const StoriePageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
              ),
            ),
            SizedBox(width: 8),
            Text('Fazal'),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: PageView(
          scrollDirection: .horizontal,
          physics: CarouselScrollPhysics(),
          scrollBehavior: MaterialScrollBehavior(),
          children: [
            Image.network(
              'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
            ),
            Image.network(
              'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
            ),
            Image.network(
              'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(
                width: 280,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Send message',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: .circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: .circular(30),
                    ),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart)),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.share)),
            ],
          ),
        ),
      ),
    );
  }
}
