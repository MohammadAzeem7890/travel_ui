import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_ink_well.dart';

class PrimaryFavouriteIcon extends StatelessWidget {
  final double screenHeight;
  const PrimaryFavouriteIcon({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
      child: PrimaryInkWell(
        radius: 50,
        onTap: () {},
        child: Center(
          child: Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: screenHeight * 0.025,
          ),
        ),
      ),
    );
  }
}
