import 'package:booking_app/src/view/screen/profile_editing_screen.dart';
import 'package:flutter/material.dart';

import '../../models/profile_models.dart';

class ProfileHeader extends StatelessWidget {
  final Profile profile;

  const ProfileHeader({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            const SizedBox(height: 50),
            Spacer(),
            Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Spacer(),
            CircleAvatar(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder:
                          (context) => ProfileEditingScreen(profile: profile),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
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
        Text(profile.profilefirstname,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
        const SizedBox(height: 5),
        Text(profile.profileemail,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color:Colors.grey),),
      ],
    );
  }
}
