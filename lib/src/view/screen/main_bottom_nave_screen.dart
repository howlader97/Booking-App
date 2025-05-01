
import 'package:booking_app/src/view/screen/calendar_screen.dart';
import 'package:booking_app/src/view/screen/home_screen.dart';
import 'package:booking_app/src/view/screen/trip_package_screen.dart';
import 'package:booking_app/src/view/screen/profile_screen.dart';
import 'package:booking_app/src/view/screen/search.dart';
import 'package:flutter/material.dart';

class MainBottomNaveScreen extends StatefulWidget {

  const MainBottomNaveScreen({super.key,});

  @override
  State<MainBottomNaveScreen> createState() => _MainBottomNaveScreenState();
}

class _MainBottomNaveScreenState extends State<MainBottomNaveScreen> {

  int _selectedIndex=0;
  final List<Widget> _screens=[
    HomeScreen(),
    CalendarScreen(),
    Search(),
    PopularTripScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_screens[_selectedIndex] ,
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 98,
          //margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white, //
           // borderRadius: BorderRadius.circular(30),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),

            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.travel_explore), label: 'Trip'),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
            ],
          ),
        ),

    );
  }
}
