import 'package:flutter/material.dart';
import 'package:travel_app_ui/home/home_widgets/dark_background_stack_image_support.dart';
import 'package:travel_app_ui/home/home_widgets/dart_background_stack_image.dart';

import '../../global_widgets/elevated_container.dart';
import '../../global_widgets/primary_button.dart';
import '../../global_widgets/primary_text.dart';

class HomeBanner extends StatelessWidget {
  final double screenHeight, screenWidth;
  const HomeBanner(
      {super.key, required this.screenHeight, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    final double bannerHeight = screenHeight * 0.22;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DarkBackgroundStackImage(
          height: bannerHeight,
        ),
        DarkBackgroundStackImageSupport(
          height: bannerHeight,
        ),
        Positioned(
          top: bannerHeight * 0.15,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: ElevatedContainer(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryText(
                    "Thailand",
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: screenWidth * 0.12,
                  ),
                  PrimaryText(
                    "And Explore the world",
                    color: Colors.white,
                    fontSize: screenWidth * 0.043,
                  ),
                  SizedBox(
                    height: bannerHeight * 0.05,
                  ),
                  SizedBox(
                      height: bannerHeight * 0.2,
                      width: screenWidth * 0.32,
                      child: PrimaryButton(
                          text: "Book Now",
                          textColor: Colors.white,
                          fontWeight: FontWeight.w700,
                          textSize: screenWidth * 0.04,
                          onPressed: () {})),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
