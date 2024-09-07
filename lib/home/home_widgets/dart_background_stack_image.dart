import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/rounded_image.dart';

class DarkBackgroundStackImage extends StatelessWidget {
  final double height;
  const DarkBackgroundStackImage({super.key,required this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height,
          width: double.maxFinite,
          child: const RoundedImage(),
        ),
      ],
    );
  }
}
