import 'package:flutter/material.dart';
import 'package:travel_app_ui/home/home_widgets/category_item.dart';

import '../../global_widgets/primary_text.dart';

class CategoryListView extends StatelessWidget {
  final double screenHeight, screenWidth;
  const CategoryListView(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: PrimaryText(
            "Categories",
            fontWeight: FontWeight.bold,
            fontSize: screenHeight * 0.024,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 80,
                offset: const Offset(10, 6),
                spreadRadius: 20,
                color: Colors.black12.withOpacity(0.1),
                blurStyle: BlurStyle.normal,
              )
            ],
          ),
          height: screenHeight * 0.155,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection:
                Axis.horizontal, // Set scrolling direction to horizontal
            itemCount: 10, // Number of items in the list
            itemBuilder: (context, index) {
              return CategoryItem(
                  index: index,
                  screenWidth: screenWidth,
                  screenHeight: screenHeight);
            },
          ),
        ),
      ],
    );
  }
}
