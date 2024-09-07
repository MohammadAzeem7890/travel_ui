import 'package:flutter/material.dart';

import '../../global_widgets/primary_favourite_icon.dart';
import '../../global_widgets/primary_text.dart';
import 'dark_background_stack_image_support.dart';
import 'dart_background_stack_image.dart';

class DestinationsBanner extends StatelessWidget {
  final double screenHeight;
  const DestinationsBanner({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final double bannerHeight = screenHeight * 0.23;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          DarkBackgroundStackImage(
            height: bannerHeight,
          ),
          DarkBackgroundStackImageSupport(
            height: bannerHeight,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: screenHeight * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: PrimaryText(
                          "Dubai",
                          color: Colors.white,
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                PrimaryFavouriteIcon(
                  screenHeight: screenHeight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
