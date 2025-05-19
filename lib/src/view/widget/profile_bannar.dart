/*


import 'package:booking_app/src/models/profile_models.dart';
import 'package:flutter/material.dart';

class ProfileBannar extends StatelessWidget {
  final Profile profile;
  const ProfileBannar({
    super.key, required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(

            radius: 28,
            backgroundImage: AssetImage(profile.profileimage),
            backgroundColor: Colors.transparent,
          ),
        const SizedBox(width: 5,),
          Text(
            profile.profilefirstname,
            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
          ),
          Spacer(),

          Container(
            padding: EdgeInsets.only(),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),

            child: IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined),),
          ),
        ],

      ),
    );
  }
}

*/

import 'package:booking_app/src/models/profile_models.dart';
import 'package:booking_app/src/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileBannar extends StatelessWidget {
  final Profile profile;
  final ThemeController themeController = Get.find();

  ProfileBannar({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(profile.profileimage),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 5),
          Text(
            profile.profilefirstname,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const Spacer(),


          Obx(() => Container(
            margin: const EdgeInsets.only(right: 8),
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                themeController.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
              onPressed: () => themeController.toggleTheme(),
            ),
          )),

          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
