import 'package:flutter/material.dart';
import 'package:travel_app_ui/posts/posts_widgets/post_item.dart';

class PostList extends StatelessWidget {
  final double screenHeight, screenWidth;
  const PostList(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
          child: PostItem(screenWidth: screenWidth, screenHeight: screenHeight),
        );
      },
    );
  }
}
