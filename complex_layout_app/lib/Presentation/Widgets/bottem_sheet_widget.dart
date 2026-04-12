import 'package:complex_layout_app/Presentation/Widgets/user_comment_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottemSheetWidget extends StatefulWidget {
  BottemSheetWidget({super.key});

  @override
  State<BottemSheetWidget> createState() => _BottemSheetWidgetState();
}

class _BottemSheetWidgetState extends State<BottemSheetWidget> {
  bool isCommentLiked = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      maxChildSize: 0.9,
      minChildSize: 0.3,
      initialChildSize: 0.6,
      expand: true,
      builder: (context, scrollController) {
        return Container(

          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: .vertical(top: .circular(30),
          ),

          ),
          child: Column(
            children: [
              Container(
                margin: .symmetric(vertical: 10),
                height: 4,width: 40,color: Colors.grey,
              ),
              Text('Comments',style: Theme.of(context).textTheme.bodyLarge,),
              Divider(thickness: 0.9,),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  scrollDirection: .vertical,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserCommentWidget(),
                    );
                  },
                ),
              ),
              SafeArea(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                  decoration: InputDecoration(
hintText: 'Add comment',
                    filled: true,
                    enabledBorder:

                  OutlineInputBorder(borderRadius: .circular(50)),
                    focusedBorder:  OutlineInputBorder(borderRadius: .circular(50)),
                  ),

                ),
              ))
            ],
          ),
        );


      },
    );
  }
}
