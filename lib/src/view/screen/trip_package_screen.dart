import 'package:flutter/material.dart';
import '../widget/popular_trip_widget.dart';

class PopularTripScreen extends StatelessWidget {
  const PopularTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 6),
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios),),
                    ),
                    const SizedBox(width: 47,),
                    Text('Popular Package',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),)
                  ],
                ),
                const SizedBox(height: 25,),
                Text('All Popular Trip Package',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),),
                const SizedBox(width: 15,),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (context,index){
                        return PopularTripWidget();
                      }),
                )



              ],
            ),
        ),
      ),
    );
  }
}


