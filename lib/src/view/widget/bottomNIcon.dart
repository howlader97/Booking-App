
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GestureDetector(
        onTap: (){

        },
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade200,
          ),
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              const SizedBox(width: 40,),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(bottomIcon.secondimage),
                backgroundColor: Colors.transparent,
              ),
              Spacer(),
              Text('Sign In with gmail',style: Theme.of(context).textTheme.bodyMedium,),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
