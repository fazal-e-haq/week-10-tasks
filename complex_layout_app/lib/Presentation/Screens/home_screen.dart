import 'package:complex_layout_app/Presentation/Widgets/post_widget.dart';
import 'package:complex_layout_app/Presentation/Widgets/stories_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              // Stories section
              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: .horizontal,
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return StoriesWidget();
                  },
                ),
              ),
          
              SizedBox(height: 10),
              // All Posts
              PostWidget(
                post_image_url:
                    'https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80',
                user_name: 'Fazal',
              ),
              PostWidget(
                post_image_url:
                    'https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80',
                user_name: 'Fazal',
              ),
              PostWidget(
                post_image_url:
                    'https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80',
                user_name: 'Fazal',
              ),
          
            ],
          ),
        ),
      ),
    );
  }

  // App bar
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.add),
      centerTitle: true,
      title: Text(
        'Instagram',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart))],
    );
  }
}
