import 'package:flutter/material.dart';

class RecomendedButton extends StatelessWidget {
  const RecomendedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(right: 30),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 85,
              height: 85,
              decoration: ShapeDecoration(
                color: Color(0xFFA71D31),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: const [
                  BoxShadow(
                      blurRadius: 6,
                      offset: Offset(0, 8),
                      spreadRadius: -2,
                      color: Color.fromRGBO(0, 0, 0, 0.5))
                ],
              ),
            ),
          ),
          Positioned(
            left: 9,
            top: 9,
            child: Container(
              width: 67,
              height: 67,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                    image: AssetImage("assets/images/test.png")),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 4,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
