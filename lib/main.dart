/*
import 'package:booking_app/firebase_options.dart';
import 'package:booking_app/src/view/screen/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 26,
            letterSpacing: 0,
          ),
          titleSmall: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          titleMedium: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          ),
        ),
      ),
    );
  }
}

*/

import 'package:booking_app/firebase_options.dart';
import 'package:booking_app/src/controller/theme_controller.dart';
import 'package:booking_app/src/view/screen/auth/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
      themeMode: themeController.theme,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 26),
          titleSmall: TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
          titleMedium: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
          bodyLarge: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 26),
          titleSmall: TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w400),
          titleMedium: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
          bodyLarge: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade800,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 17),
          ),
        ),
      ),
    ));
  }
}
