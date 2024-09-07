import 'package:flutter/material.dart';

class PrimaryInkWell extends StatelessWidget {
  final Function() onTap;
  final Widget child;
  final double radius;
  final double top, bottom, left, right;
  const PrimaryInkWell({
    super.key,
    this.top = 8.0,
    this.bottom = 8.0,
    this.left = 8.0,
    this.right = 8.0,
    required this.onTap,
    required this.child,
    this.radius = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        splashColor: Colors.red[100],
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(
              left: left, right: right, top: top, bottom: bottom),
          child: child,
        ),
      ),
    );
  }
}
