import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/restaurantBar/restaurantComponent.dart';

class RestaurantSelector extends StatefulWidget {
  const RestaurantSelector({super.key});

  @override
  State<RestaurantSelector> createState() => _RestaurantSelectorState();
}

class _RestaurantSelectorState extends State<RestaurantSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 30),
      child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            RestaurantComponent(),
            RestaurantComponent(),
            RestaurantComponent(),
            RestaurantComponent(),
            RestaurantComponent(),
            RestaurantComponent(),
          ]),
    );
  }
}
