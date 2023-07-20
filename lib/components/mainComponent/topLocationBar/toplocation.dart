import 'dart:ui';

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
        padding: const EdgeInsets.symmetric(horizontal: 12),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Color.fromARGB(200, 255, 255, 255),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                child: Text(
                  widget.texto,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Icon(Icons.place_rounded,
                  color: Color(0xFFA71D31), size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
