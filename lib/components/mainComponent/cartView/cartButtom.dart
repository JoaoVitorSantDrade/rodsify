import 'dart:ui';

import 'package:flutter/material.dart';

class CartButton extends StatefulWidget {
  const CartButton({super.key});

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    int cartCount = 0;
    return Stack(
      children: [
        MaterialButton(
          color: const Color(0xFFA71D31),
          onPressed: () {},
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(24),
          textColor: Colors.white,
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 32,
          ),
        ),
        Positioned(
          right: 3,
          top: 0,
          child: ClipOval(
            child: Container(
              height: 20,
              width: 20,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                color: Color.fromRGBO(63, 13, 18, 0.5),
              ),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Text(
                    cartCount.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
