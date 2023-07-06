import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleName extends StatelessWidget {
  const TitleName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(0, 255, 255, 255),
        border: Border(
          bottom: BorderSide(
            width: 3,
            color: Colors.white,
          ),
        ),
      ),
      child: Text(
        "Rodsify   ",
        style: GoogleFonts.mochiyPopPOne(
          textStyle: const TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
