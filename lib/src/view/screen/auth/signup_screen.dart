import 'package:booking_app/src/models/bottom_icon.dart';
import 'package:booking_app/src/view/screen/auth/login_screen.dart';
import 'package:booking_app/src/view/widget/bottomNIcon.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _NameTEController = TextEditingController();
    final TextEditingController _EmailTEController = TextEditingController();
    final TextEditingController _passwordTEController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    List<BottomIcon> bottomIcons = BottomIcon.getBottomIcon();
    bool isObsecurer= false;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
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
                Center(child: Text('Sign Up ', style: Theme.of(context).textTheme.titleLarge)),
                const SizedBox(height: 6),
                Center(
                  child: Text(
                    'Please fill in the details and create account',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const SizedBox(height: 35),
                TextFormField(
                  controller: _NameTEController,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _EmailTEController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    // Basic email regex
                    final emailRegex = RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    );
                    if (!emailRegex.hasMatch(value)) {
                      return 'Enter a valid email';
                    }
                    return null; // input is valid
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordTEController,
                  obscureText: isObsecurer,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your password';
                    }
                    if (value.length <= 5) {
                      return 'Password at least six digit';
                    }
                    return null;
                  },

                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: Theme.of(context).textTheme.bodySmall,
                      suffixIcon: InkWell(
                          onTap: (){
                            isObsecurer =! isObsecurer;
                            setState(() {

                            });
                          },
                          child:isObsecurer ==true? Icon(Icons.remove_red_eye):Icon(Icons.visibility_off))
                  ),
                ),
                const SizedBox(height: 8),

                //Text('Password must be 8 characters',style: Theme.of(context).textTheme.titleSmall,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Password must be 8 characters',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (mounted) {
                          setState(() {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                              (route) => false,
                            );
                          });
                        }
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 6),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
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
                for (var icon in bottomIcons) BottomNIcon(bottomIcon: icon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
