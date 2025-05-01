import 'package:booking_app/src/models/cart_model.dart';
import 'package:booking_app/src/models/view_resort.dart';
import 'package:flutter/material.dart';
import '../widget/cart_screen.dart';




class DetailsScreen extends StatefulWidget {
  final ViewResort viewResort;
  const DetailsScreen({super.key, required this.viewResort});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<Cart> carts=Cart.getCart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           SizedBox(
             width: double.infinity,
             height: 400,
             child: Image.asset(widget.viewResort.image,fit: BoxFit.cover,),
           ),

      Expanded(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.viewResort.locationName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 20,
                        ),
                      ],
                    ),
                     Text(
                      widget.viewResort.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 18),
                     Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on, color: Colors.grey),
                            Text(
                            widget.viewResort.location,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 60),
                        Icon(Icons.star, color: Colors.yellow,size: 18,),

                        Text(
                            widget.viewResort.text,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      height:65 ,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: carts.length,
                        itemBuilder: (context, index) {
                          return cart_screen(cart: carts[index],);
                        },
                      ),
                    ),

                    const Text(
                      'About Description',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),

                    const SizedBox(height: 18),
                     Text(
                      widget.viewResort.description,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF7D848D),
                      ),
                    ),
                  ],
                ),
              )
          )
      )
         ],
       ),
    );
  }
}




