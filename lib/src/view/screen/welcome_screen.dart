import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size=MediaQuery.of(context).size;
    return Scaffold(
          body: Container(
            width: _size.height,
            height: _size.width,
            child: Column(
              children: [


            ],
          ),
          ),
    );
  }
}
