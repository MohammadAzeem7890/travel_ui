import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_ink_well.dart';
import 'package:travel_app_ui/global_widgets/primary_text.dart';
import 'package:travel_app_ui/global_widgets/rounded_back_icon.dart';

import 'app_standard_gap.dart';

class AppBarWithHeadingAndBack extends StatelessWidget {
  const AppBarWithHeadingAndBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        AppStandardGap(screenHeight: screenHeight),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const RoundedBackIcon(),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: PrimaryText(
                          "The Holiday",
                          fontSize: screenWidth * 0.055,
                          align: TextAlign.start,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  PrimaryInkWell(
                      onTap: () {
                        // todo
                      },
                      child: const Icon(Icons.share)),
                  PrimaryInkWell(
                      onTap: () {
                        // todo
                      },
                      child: const Icon(Icons.notifications_active_outlined)),
                ],
              ),
            ],
          ),
        ),
        AppStandardGap(screenHeight: screenHeight),
      ],
    );
  }
}
