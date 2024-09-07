import 'package:flutter/material.dart';
import 'package:travel_app_ui/posts/posts_widgets/post_reaction_widget.dart';

import '../../global_widgets/app_standard_gap.dart';
import '../../global_widgets/primary_button.dart';
import '../../global_widgets/primary_ink_well.dart';
import '../../global_widgets/primary_text.dart';
import '../../global_widgets/rounded_image.dart';

class PostItem extends StatelessWidget {
  final double screenHeight, screenWidth;
  const PostItem(
      {super.key, required this.screenWidth, required this.screenHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: screenWidth,
      child: PrimaryInkWell(
        onTap: () {
          //todo
        },
        left: 15,
        right: 15,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                            height: screenHeight * 0.06,
                            width: screenHeight * 0.06,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.red, width: 2)),
                            child: const RoundedImage(
                              borderRadius: 50,
                            )),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(
                              "Courtney346",
                              textHeight: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: screenWidth * 0.045,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            PrimaryText(
                              "Suggested for you",
                              textHeight: 1,
                              fontSize: screenWidth * 0.026,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                        height: screenHeight * 0.045,
                        child: PrimaryButton(
                            text: "Follow",
                            fontWeight: FontWeight.w700,
                            onPressed: () {
                              // todo
                            })),
                    PrimaryInkWell(
                      onTap: () {
                        // todo
                      },
                      left: 0,
                      child: const Icon(
                        Icons.more_vert,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                )
              ],
            ),
            AppStandardGap(screenHeight: screenHeight / 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: PrimaryText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                fontSize: screenWidth * 0.036,
                textHeight: 1.1,
                align: TextAlign.justify,
                maxLines: 4,
              ),
            ),
            AppStandardGap(screenHeight: screenHeight / 2),
            SizedBox(
                height: screenHeight * 0.28,
                width: screenWidth,
                child: const RoundedImage()),
            AppStandardGap(screenHeight: screenHeight / 3),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryInkWell(
                  onTap: () {},
                  child: const PostReactionWidget(
                    icon: Icons.thumb_up_alt_outlined,
                    text: "Like",
                  ),
                ),
                PrimaryInkWell(
                  onTap: () {},
                  child: const PostReactionWidget(
                    icon: Icons.add_comment_outlined,
                    text: "Comment",
                  ),
                ),
                PrimaryInkWell(
                  onTap: () {},
                  child: const PostReactionWidget(
                    icon: Icons.share,
                    text: "Share",
                  ),
                ),
                PrimaryInkWell(
                    onTap: () {
                      // todo
                    },
                    child: const Icon(Icons.save_as_outlined))
              ],
            )
          ],
        ),
      ),
    );
  }
}
