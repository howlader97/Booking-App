
import 'package:booking_app/src/models/view_resort.dart';
import 'package:flutter/material.dart';

class ScheduleData extends StatelessWidget {
  final ViewResort viewResort;
  const ScheduleData({super.key, required this.viewResort, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: 335,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
      ),
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: ClipRRect(

                borderRadius: BorderRadius.circular(10),
                child: SizedBox(

                  child: Image.asset(
                    viewResort.image,
                  ),
                ),
              ),
            ),
          //  const SizedBox(width: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 12,right: 12,bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                      ),
                      Text('date',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w400),),

                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(viewResort.locationName,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text(viewResort.location,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 13),),
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios,color: Color(0xFF7D848D),),
            ),
          ],
        ),
      ),
    );
  }
}
