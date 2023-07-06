import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/topTypesFoodBar/TypeFood.dart';

class TypeFoodBar extends StatefulWidget {
  const TypeFoodBar({super.key});

  @override
  State<TypeFoodBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TypeFoodBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            TypeFood(label: "Massas"),
            TypeFood(label: "Sushi"),
            TypeFood(label: "Pizza"),
            TypeFood(label: "Churrasco"),
            TypeFood(label: "Acompanhamentos")
          ]),
    );
  }
}
