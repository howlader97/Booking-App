import 'package:booking_app/src/models/cart_model.dart';
import 'package:flutter/material.dart';

class cart_screen extends StatelessWidget {
  final Cart cart;

  const cart_screen({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: 70,
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(cart.image, fit: BoxFit.cover),
      ),
    );
  }
}
