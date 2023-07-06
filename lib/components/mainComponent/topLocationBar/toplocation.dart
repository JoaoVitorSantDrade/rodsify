import 'package:flutter/material.dart';

class TopLocation extends StatefulWidget {
  const TopLocation({super.key, required this.texto});
  final String texto;

  @override
  State<TopLocation> createState() => _TopLocationState();
}

class _TopLocationState extends State<TopLocation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: Color(0xFFA71D31),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 162,
              height: 20,
              child: Text(
                widget.texto,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Icon(Icons.place_rounded, color: Colors.white, size: 20),
          ],
        ),
      ),
    );
  }
}
