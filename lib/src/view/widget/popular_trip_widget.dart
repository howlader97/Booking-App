import 'package:flutter/material.dart';

class PopularTripWidget extends StatelessWidget {
  const PopularTripWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 95,
                height: 116,
                child:Image.asset('assets/images/Rectangle 843.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 3,),
                  Text('Santorini Island',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16),),
                  const SizedBox(height: 2,),
                  Row(children: [
                    Icon(Icons.calendar_month,size: 13,),
                    const SizedBox(width: 3,),
                    Text('4/30/25',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),)
                  ],),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Icon(Icons.star,size: 14,color: Color(0xFFFFD336),),
                      Icon(Icons.star,size: 14,color: Color(0xFFFFD336),),
                      Icon(Icons.star,size: 14,color: Color(0xFFFFD336),),
                      const SizedBox(width: 2,),
                      Text('4.3',style: TextStyle(color: Color(0xFf1B1E28),fontSize: 13,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  Text('26 point joined',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 13),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 23),
              child: Container(
                height: 26,
                width: 44,
                decoration: BoxDecoration(
                    color: Color(0xFF0D6EFD),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text("\$820",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFFFFFFFF)),),),
              ),
            )

            
          ],
        ),
      ),
    );
  }
}