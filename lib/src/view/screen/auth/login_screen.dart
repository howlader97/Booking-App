// src/view/screen/auth/login_screen.dart

import 'package:flutter/material.dart';
import 'package:booking_app/src/models/bottom_icon.dart';
import 'package:booking_app/src/view/widget/bottomNIcon.dart';
import 'package:booking_app/src/view/screen/auth/forget_password_screen.dart';
import 'package:booking_app/src/view/screen/auth/signup_screen.dart';
import 'package:booking_app/src/view/screen/main_bottom_nave_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<BottomIcon> bottomIcons = BottomIcon.getBottomIcon();

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();
  bool isObsecure= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _globalkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
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
                Center(child: Text('Sign in', style: Theme.of(context).textTheme.titleLarge)),
                const SizedBox(height: 6),
                Center(
                  child: Text(
                    'Please sign in continue in our app',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your valid email';
                    }
                    return null;
                  },
                  decoration:  InputDecoration(
                    hintText: 'Email',
                    hintStyle:Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: isObsecure,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length <= 5) {
                      return 'Password must be at least six digits';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:Theme.of(context).textTheme.bodySmall,
                    suffixIcon: InkWell(
                      onTap: (){
                        isObsecure =! isObsecure;
                        setState(() {

                        });
                      },
                        child:isObsecure ==true? Icon(Icons.remove_red_eye):Icon(Icons.visibility_off))

                  ),

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forget Password?',
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MainBottomNaveScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    'Or connect',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 65),
                // Now loop through the icons if needed:
                for (var icon in bottomIcons) BottomNIcon(bottomIcon: icon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
