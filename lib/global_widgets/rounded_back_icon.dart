import 'package:flutter/material.dart';
import 'package:travel_app_ui/global_widgets/primary_ink_well.dart';

class RoundedBackIcon extends StatelessWidget {
  const RoundedBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 0),
                  blurStyle: BlurStyle.normal),
            ]),
        child: PrimaryInkWell(
          radius: 50,
          onTap: () {
            // todo
          },
          left: 6,
          child: const Icon(
            Icons.arrow_back_rounded,
            size: 20,
          ),
        ));
  }
}
