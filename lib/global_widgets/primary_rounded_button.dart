import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_text.dart';

class PrimaryRoundedButton extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? appBackgroundColor, textColor;
  const PrimaryRoundedButton(
      {super.key,
      this.textColor,
        this.fontWeight,
      required this.onPressed,
      this.appBackgroundColor,
      required this.buttonText,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: appBackgroundColor,
        side: const BorderSide(color: Colors.pinkAccent, width: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: PrimaryText(
        buttonText,
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
