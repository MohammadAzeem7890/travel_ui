import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_ink_well.dart';

import '../../global_widgets/primary_text.dart';

class CategoryItem extends StatelessWidget {
  final double screenHeight, screenWidth;
  final int index;
  const CategoryItem(
      {super.key,
      required this.index,
      required this.screenWidth,
      required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 15,
          left: index == 0 ? 15 : 6,
          right: index == 9 ? 15 : 6,
          bottom: 15),
      child: Container(
        width: screenWidth * 0.21,
        decoration: BoxDecoration(
          color: index == 1 ? Colors.pinkAccent : Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 80,
              offset: const Offset(10, 6),
              spreadRadius: 20,
              color: Colors.black.withOpacity(0.1),
              blurStyle: BlurStyle.normal,
            )
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: PrimaryInkWell(
          onTap: () {
            // todo
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Icon(
                  Icons.transfer_within_a_station,
                  color: index == 1 ? Colors.white : Colors.black,
                  size: screenHeight * 0.045,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Flexible(
                child: PrimaryText(
                  "Holidays",
                  color: index == 1 ? Colors.white : Colors.black,
                  fontSize: screenWidth * 0.031,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
