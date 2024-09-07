import 'package:flutter/material.dart';

import 'grid_style_destination_item.dart';

class DestinationGridView extends StatelessWidget {
  final double screenHeight;
  const DestinationGridView({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Expanded(
            child: GridStyleDestinationItem(
              screenHeight: screenHeight,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: GridStyleDestinationItem(
              screenHeight: screenHeight,
            ),
          ),
        ],
      ),
    );
  }
}
