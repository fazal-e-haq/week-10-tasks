import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserCommentWidget extends StatefulWidget {
  UserCommentWidget({super.key});

  bool isCommentLiked = false;
  @override
  State<UserCommentWidget> createState() => _UserCommentWidgetState();
}

class _UserCommentWidgetState extends State<UserCommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            // Commented user pic
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.red,
              backgroundImage: NetworkImage(
                'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .start,
              children: [
                // commented user name and timing when user commented
                const Row(
                  children: [
                    Text('Fazal', style: TextStyle(fontWeight: .bold)),
                    SizedBox(width: 8),
                    Text('29m'),
                  ],
                ),
                const Text(
                  'This pic is so good',
                  style: TextStyle(
                    fontWeight: .w400,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Reply',
                    style: TextStyle(
                      fontWeight: .w200,
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        // Comment like
        IconButton(
          onPressed: () {
            setState(() {
              widget.isCommentLiked = !widget.isCommentLiked;
            });
          },
          icon: widget.isCommentLiked
              ? const Icon(CupertinoIcons.heart_fill, color: Colors.redAccent)
              : const Icon(CupertinoIcons.heart),
        ),
      ],
    );
  }
}
