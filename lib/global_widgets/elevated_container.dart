import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final double? height, width;
  final BoxShape shape;
  final BoxBorder? border;
  final Color? color;
  final Widget? child;
  final double blurRadius;
  final BorderRadius? borderRadius;

  const ElevatedContainer(
      {super.key,
      this.shape = BoxShape.rectangle,
      this.color,
      this.blurRadius = 20,
      this.child,
      this.width,
      this.borderRadius,
      this.height,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: shape,
        border: border,
        color: color,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(0.15),
              offset: const Offset(3, 0),
              blurRadius: blurRadius,
              spreadRadius: 4)
        ],
      ),
      child: child,
    );
  }
}
