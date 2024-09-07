import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_text.dart';

class PostReactionWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const PostReactionWidget({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        FittedBox(
            child: PrimaryText(
          text,
          fontSize: screenWidth * 0.04,
        )),
      ],
    );
  }
}
