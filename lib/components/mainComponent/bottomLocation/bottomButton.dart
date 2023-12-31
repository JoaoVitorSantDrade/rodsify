import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.iconButton, this.title});

  final IconData iconButton;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...[
          MaterialButton(
            elevation: 5,
            onPressed: () {},
            color: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(14),
            textColor: Colors.black,
            child: Icon(iconButton, size: 28),
          )
        ],
        if (title != null) ...[
          Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),
        ]
      ],
    );
  }
}
