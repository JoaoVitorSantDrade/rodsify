import 'package:flutter/material.dart';

class TypeFood extends StatefulWidget {
  const TypeFood({super.key, required this.label});

  final String label;

  @override
  State<TypeFood> createState() => _TypeFoodState();
}

class _TypeFoodState extends State<TypeFood> {
  double borderBottom = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: borderBottom, color: Theme.of(context).primaryColor),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        child: Text(
          widget.label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
