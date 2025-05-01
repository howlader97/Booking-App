import 'package:booking_app/src/models/view_resort.dart';
import 'package:booking_app/src/view/screen/details_screen.dart';
import 'package:flutter/material.dart';

class CarousalLocationSlider extends StatelessWidget {
   final  ViewResort viewResort;
  const CarousalLocationSlider({super.key, required this.viewResort});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(viewResort: viewResort)));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(
                  viewResort.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 6,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                viewResort.locationName ,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                const Spacer (),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                viewResort.text ,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  viewResort.location,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
