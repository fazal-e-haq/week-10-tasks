import 'package:complex_layout_app/Presentation/Widgets/bottem_sheet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  // Constructure
  PostWidget({
    super.key,
    required this.user_name,
    required this.post_image_url,
  });
  // Global variables
  String user_name;
  String post_image_url;
  bool isLiked = false;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(vertical: 15),
      child: Column(
        children: [
          // User profile picture,name and more icon button so any user can understand who post is this
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.red,
                      backgroundImage: NetworkImage(
                        'https://t3.ftcdn.net/jpg/09/56/13/38/360_F_956133862_vebVjt3KfgA36yDUWuVZH6lk1OlBOHji.jpg',
                      ),
                    ),

                    SizedBox(width: 18),
                    Text(
                      widget.user_name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: .bold,
                      ),
                    ),
                  ],
                ),
                Icon(CupertinoIcons.ellipsis_vertical),
              ],
            ),
          ),
          SizedBox(height: 8),
          // User post
          Image.network(
            widget.post_image_url.toString(),
            height: 500,
            width: double.infinity,
            fit: .fill,
          ),
          SizedBox(height: 10),
          // User post popularity by likes,comments and shares also any user can save this post through save icon button
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isLiked = !widget.isLiked;
                      });
                    },
                    icon: widget.isLiked
                        ? Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.redAccent,
                          )
                        : Icon(CupertinoIcons.heart),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => BottemSheetWidget(),
                      );
                    },
                    icon: Icon(CupertinoIcons.conversation_bubble),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.share),
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark)),
            ],
          ),
          SizedBox(height: 5),
          // post description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: .ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
