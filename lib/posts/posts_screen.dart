import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/app_bar_with_heading_and_back.dart';
import 'package:travel_app_ui/global_widgets/app_standard_gap.dart';
import 'package:travel_app_ui/posts/posts_widgets/add_posts_list.dart';
import 'package:travel_app_ui/posts/posts_widgets/post_list.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenHeight * 0.06),
            child: const AppBarWithHeadingAndBack()),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddPostsList(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              AppStandardGap(screenHeight: screenHeight),
              PostList(screenHeight: screenHeight, screenWidth: screenWidth),
              AppStandardGap(screenHeight: screenHeight),
            ],
          ),
        ),
      ),
    );
  }
}
