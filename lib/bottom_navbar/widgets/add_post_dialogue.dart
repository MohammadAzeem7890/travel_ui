import 'dart:math';

import 'package:flutter/material.dart';

import '../../global_widgets/primary_rounded_button.dart';
import '../../global_widgets/primary_text.dart';

class AddPostDialogue extends StatelessWidget {
  const AddPostDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dialogueHeight = screenHeight * 0.225;
    final double dialogueWidth = screenWidth * 0.85;
    return Stack(
      clipBehavior: Clip.none, // Allow the pointer to go beyond the container
      children: [
        Positioned(
          bottom: 130,
          left: 15,
          right: 15,
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  bottom: -5,
                  left: dialogueWidth / 2.4,
                  right: dialogueWidth / 2.4,
                  child: Transform.rotate(
                    angle: pi / 4,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(12, 12),
                              color: Colors.black12,
                              blurRadius: 6,
                              spreadRadius: 10,
                              blurStyle: BlurStyle.normal)
                        ],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: dialogueHeight,
                  width: dialogueWidth,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(2, 0),
                            color: Colors.black12,
                            blurRadius: 2,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.normal)
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: PrimaryText(
                            "Upload New Post",
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: PrimaryText(
                            "Click \"+\" icon to create new post ",
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: PrimaryRoundedButton(
                                  buttonText: "Regular Post",
                                  textColor: Colors.white,
                                  textSize: screenWidth * 0.036,
                                  fontWeight: FontWeight.w600,
                                  appBackgroundColor: Colors.pinkAccent,
                                  onPressed: () {}),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              child: PrimaryRoundedButton(
                                buttonText: "Partner Post",
                                textColor: Colors.black,
                                textSize: screenWidth * 0.036,
                                fontWeight: FontWeight.w600,
                                appBackgroundColor: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
