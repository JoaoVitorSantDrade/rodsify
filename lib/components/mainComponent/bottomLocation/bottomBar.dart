import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/bottomLocation/bottomButton.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(top: 8),
      decoration: const BoxDecoration(
        color: Color(0xFFAB1616),
        shape: BoxShape.rectangle,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomButton(
            iconButton: Icons.fastfood_rounded,
            title: "Promos",
          ),
          BottomButton(
            iconButton: Icons.sell_rounded,
            title: "Cupom",
          ),
          BottomButton(
            iconButton: Icons.loyalty_rounded,
            title: "Clube",
          ),
          BottomButton(
            iconButton: Icons.person,
            title: "Perfil",
          ),
        ],
      ),
    );
  }
}
