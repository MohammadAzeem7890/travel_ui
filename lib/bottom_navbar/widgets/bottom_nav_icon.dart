import 'package:flutter/material.dart';

class BottomNavIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final Color color;
  const BottomNavIcon(this.iconData,
      {super.key, this.size = 30, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: color)),
      child: SizedBox(
        height: size,
        width: size,
        child: Icon(
          iconData,
          size: 20,
        ),
      ),
    );
  }
}
