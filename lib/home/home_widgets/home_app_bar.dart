import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/app_standard_gap.dart';

import '../../global_widgets/primary_ink_well.dart';

class HomeAppBar extends StatelessWidget {
  final double screenHeight;
  const HomeAppBar({super.key, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        AppStandardGap(screenHeight: screenHeight),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PrimaryInkWell(
                onTap: () {
                  // todo
                },
                left: 0,
                child: const Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Hyderabad, India",
                      style: TextStyle(fontSize: 16),
                    ),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              )
            ],
          ),
        ),
        PrimaryInkWell(
            onTap: () {},
            child: const Icon(Icons.notifications_active_outlined)),
        PrimaryInkWell(onTap: () {}, child: const Icon(Icons.share_rounded)),
        AppStandardGap(screenHeight: screenHeight),
      ],
    );
  }
}
