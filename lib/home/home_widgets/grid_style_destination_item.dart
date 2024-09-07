import 'package:flutter/material.dart';
import 'package:travel_app_ui/home/home_widgets/dark_background_stack_image_support.dart';

import '../../global_widgets/primary_favourite_icon.dart';
import 'dart_background_stack_image.dart';

class GridStyleDestinationItem extends StatelessWidget {
  final double screenHeight;
  const GridStyleDestinationItem({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    final double bannerHeight = screenHeight * 0.22;
    return Stack(
      children: [
        DarkBackgroundStackImage(
          height: bannerHeight,
        ),
        DarkBackgroundStackImageSupport(
          height: bannerHeight,
        ),
        Positioned(
            top: 8,
            right: 8,
            child: PrimaryFavouriteIcon(
              screenHeight: screenHeight,
            ))
      ],
    );
  }
}
