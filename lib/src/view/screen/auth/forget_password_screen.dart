
import 'package:booking_app/src/view/screen/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text('Forget Password',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text('Enter your email account and reset your password',
                    style: Theme.of(context).textTheme.titleSmall),
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',hintStyle:Theme.of(context).textTheme.bodySmall,
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpVerificationScreen()));
                    },
                    child: Text(
                      'Reset Password',
                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600),

                    )),

              )
            ],
          ),
        ),
      ),
    );
  }
}
