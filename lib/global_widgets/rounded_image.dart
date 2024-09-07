import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final double borderRadius;
  final String image;
  const RoundedImage(
      {super.key,
      this.borderRadius = 15.0,
      this.image = "assets/images/home-banner-image-1.jpg"});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
