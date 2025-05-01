import 'package:flutter/material.dart';

class TravelHistory extends StatelessWidget {
  const TravelHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
           // width: 114,
            height: 100,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
             // border: Border.all(color: Colors.black12),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(14),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reward Points',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '360',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 2,),
        Expanded(
          child: Container(
            alignment: Alignment.center,
           // width: 114,
            height: 100,
            //color: Colors.white,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
             // border: Border.all(color: Colors.black12),
                  color: Colors.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Travel Trips',
                  style:Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '238',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 2,),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            //width: 114,
            height: 100,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
             // border: Border.all(color: Colors.black12),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bucket list',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  '238',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}