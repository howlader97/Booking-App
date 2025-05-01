

import 'package:flutter/material.dart';
import 'package:booking_app/src/models/bottom_icon.dart';

class BottomNIcon extends StatelessWidget {
  final BottomIcon bottomIcon; // Notice: it's BottomIcon (model)

  const BottomNIcon({
    super.key,
    required this.bottomIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          child: Icon(
            Icons.facebook,
            size: 44,
          ),
        ),
        const SizedBox(width: 8
                   ,),
        CircleAvatar(
          child: Image.asset(bottomIcon.secondimage),
        ),
        const SizedBox(width:8,),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(bottomIcon.thirdimage),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
