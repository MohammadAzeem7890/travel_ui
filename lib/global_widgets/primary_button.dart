import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_text.dart';


class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double? textSize;
  final FontWeight? fontWeight;
  final Color? appBackgroundColor, textColor;
  const PrimaryButton(
      {super.key,
        this.textColor = Colors.white,
        this.fontWeight,
        required this.onPressed,
        this.appBackgroundColor,
        required this.text,
        this.textSize});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: PrimaryText(
        text,
        color: textColor,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
    );
  }
}