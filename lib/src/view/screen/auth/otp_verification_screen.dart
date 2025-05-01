
import 'package:booking_app/src/view/screen/auth/forget_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                child: Text('Otp verification',
                    style: Theme.of(context).textTheme.titleLarge),
              ),
              const SizedBox(
                height: 6,
              ),
              Center(
                child: Text('Please check your email www remon@gmail.com to see the verification code',
                    style: Theme.of(context).textTheme.titleSmall),
              ),
              const SizedBox(
                height: 35,
              ),
              Text('Otp code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              const SizedBox(
                height: 6,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  activeColor: Colors.white,
                  inactiveFillColor: Colors.white,
                  selectedColor: Colors.green,

                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor:Colors.white,
                enableActiveFill: true,
                onCompleted: (v) {
                  print("Completed");
                },
                onChanged: (value) {
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                }, appContext: context,
              ),

              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Verify',
                        style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w600)
                    )),

              )
            ],
          ),
        ),
      ),
    );
  }
}
