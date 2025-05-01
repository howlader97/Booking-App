import 'package:booking_app/src/models/profile_models.dart';
import 'package:booking_app/src/view/widget/profile_header.dart';
import 'package:booking_app/src/view/widget/travel_history.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<Profile> profiles = Profile.getProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ProfileHeader(profile: profiles[0]),

              const SizedBox(height: 20),
              TravelHistory(),
              const SizedBox(height: 15),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.person_outlined,
                      color: Color(0xFF7D848D),
                    ),
                    title: Text(
                      'Profile',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 7,
                  ),
                  tileColor: Colors.white,
                  leading: Icon(
                    Icons.bookmark_border_outlined,
                    color: Color(0xFF7D848D),
                  ),
                  title: Text(
                    'Bookmarked',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 7,
                  ),
                  tileColor: Colors.white,
                  leading: Icon(Icons.travel_explore, color: Color(0xFF7D848D)),
                  title: Text(
                    'Previous_Trips',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 7,
                  ),
                  tileColor: Colors.white,
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Color(0xFF7D848D),
                  ),
                  title: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    tileColor: Colors.white,
                    leading: Icon(
                      Icons.vertical_align_bottom,
                      color: Color(0xFF7D848D),
                    ),
                    title: Text(
                      'Version',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios, weight: 5.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
