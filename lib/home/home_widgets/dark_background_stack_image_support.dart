import 'package:flutter/material.dart';

class DarkBackgroundStackImageSupport extends StatelessWidget {
  final double height;
  const DarkBackgroundStackImageSupport({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(15)),
    );
  }
}
