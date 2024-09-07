import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/elevated_container.dart';
import 'package:travel_app_ui/global_widgets/primary_ink_well.dart';

class BottomNavCenterButton extends StatelessWidget {
  final Function() onTap;

  const BottomNavCenterButton(
      {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedContainer(
      height: 53,
      width: 53,
      border: Border.all(color: Colors.white, width: 2),
      color: Colors.pinkAccent,
      shape: BoxShape.circle,
      child: PrimaryInkWell(
        onTap: onTap,
        radius: 50,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
