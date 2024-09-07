import 'package:flutter/material.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final double textHeight;
  final FontWeight? fontWeight;
  final int maxLines;
  final TextAlign? align;
  const PrimaryText(
    this.text, {
    super.key,
        this.textHeight = 1.2,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.maxLines = 1,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: textHeight),
    );
  }
}
