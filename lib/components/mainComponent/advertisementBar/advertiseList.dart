import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/advertisementBar/advetiseComp.dart';

class AdvertiseList extends StatefulWidget {
  const AdvertiseList({super.key});

  @override
  State<AdvertiseList> createState() => _AdvertiseListState();
}

class _AdvertiseListState extends State<AdvertiseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: const [
            Advertise(image: "foo"),
            Advertise(image: "foo"),
            Advertise(image: "foo"),
            Advertise(image: "foo"),
            Advertise(image: "foo"),
          ]),
    );
  }
}
