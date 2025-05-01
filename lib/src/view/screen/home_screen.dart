

import 'package:booking_app/src/models/profile_models.dart';
import 'package:booking_app/src/models/view_resort.dart';
import 'package:booking_app/src/view/widget/carousal_location_slider.dart';
import 'package:booking_app/src/view/widget/profile_bannar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ViewResort> viewResorts = ViewResort.getResort();
  List<Profile> profiles = Profile.getProfile();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            ProfileBannar(profile: profiles[0]),
            const SizedBox(height: 20),
            Text(
              'Explore the',
              style: TextStyle(
                fontSize: 38,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Beautiful',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 38),
                  ),
                  TextSpan(
                    text: ' world!',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Destination',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'see all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: CarouselSlider(
                items:
                [0].map((i) {
                  return (Container(
                    height: 350,
                    width: 268,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CarousalLocationSlider(
                      viewResort: viewResorts[i],
                    ),
                  ));
                }).toList(),
                options: CarouselOptions(
                  height: 380,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
