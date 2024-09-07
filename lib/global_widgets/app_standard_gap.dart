import 'package:flutter/material.dart';

class AppStandardGap extends StatelessWidget {
  final double screenHeight;
  const AppStandardGap({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.018,
      width: 15,
    );
  }
}
