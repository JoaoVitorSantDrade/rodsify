import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/bottomLocation/bottomButton.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.rectangle,
        border: Border(
          top: BorderSide(color: Color.fromRGBO(171, 22, 22, 1), width: 2),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomButton(
            iconButton: Icons.fastfood_rounded,
          ),
          BottomButton(
            iconButton: Icons.sell_rounded,
          ),
          BottomButton(
            iconButton: Icons.loyalty_rounded,
          ),
          BottomButton(
            iconButton: Icons.person,
          ),
        ],
      ),
    );
  }
}
