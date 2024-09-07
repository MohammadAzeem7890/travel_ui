import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/rounded_image.dart';

import '../../global_widgets/primary_ink_well.dart';
import '../../global_widgets/primary_text.dart';

class AddPostsItem extends StatelessWidget {
  final double screenHeight, screenWidth;
  final int index;
  const AddPostsItem(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 8,
          left: index == 0 ? 15 : 5,
          right: index == 9 ? 15 : 5,
          bottom: 4),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: screenWidth * 0.21,
              decoration: BoxDecoration(
                color: Colors.white,
                border: const Border.fromBorderSide(
                    BorderSide(color: Colors.black12)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: const Offset(0, 0),
                  )
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: index == 0
                  ? PrimaryInkWell(
                      onTap: () {
                        // todo
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    )
                  : const RoundedImage(),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.2,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 4),
              child: PrimaryText(
                "Post Story",
                color: Colors.black,
                fontSize: screenWidth * 0.031,
                align: TextAlign.center,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
