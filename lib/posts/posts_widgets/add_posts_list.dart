import 'package:flutter/material.dart';
import 'package:travel_app_ui/posts/posts_widgets/add_posts_item.dart';

class AddPostsList extends StatelessWidget {
  final double screenHeight, screenWidth;
  const AddPostsList(
      {super.key, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.19,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return AddPostsItem(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            index: index,
          );
        },
      ),
    );
  }
}
