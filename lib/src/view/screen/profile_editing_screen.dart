import 'package:booking_app/src/models/profile_models.dart';
import 'package:flutter/material.dart';

class ProfileEditingScreen extends StatelessWidget {
  final Profile profile;

  const ProfileEditingScreen({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
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
                      Spacer(),
                      Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: Color(0xFF0D6EFD),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(profile.profileimage),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    profile.profilefirstname,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Change Profile Picture',
                    style: TextStyle(
                      color: Color(0xFf0D6EFD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),

                    ),
                  ),
                  Text(
                    'Last Name',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),

                    ),
                  ),
                  Text(
                    'Location',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),

                    ),
                  ),
                  Text('Mobile', style: Theme.of(context).textTheme.bodyLarge),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 14,
                      ),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
