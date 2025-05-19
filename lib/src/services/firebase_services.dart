import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../view/screen/main_bottom_nave_screen.dart';

class FirebaseServices {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password,) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      print('sign up successfull');


    } catch (e) {
      print('sign up failed! try again ${e}');
    }
  }

  Future<void> signIn(String email, String password , BuildContext context) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('login successfull');
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainBottomNaveScreen()));
    } catch (e) {
      print('login failed! check your email and password');
    }
  }
}
