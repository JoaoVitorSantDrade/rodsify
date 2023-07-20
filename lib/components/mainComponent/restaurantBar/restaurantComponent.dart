import 'package:flutter/material.dart';
import 'package:rodsify/views/restaurantInfo_view.dart';

class RestaurantComponent extends StatefulWidget {
  const RestaurantComponent({super.key});

  @override
  State<RestaurantComponent> createState() => _RestaurantComponentState();
}

class _RestaurantComponentState extends State<RestaurantComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 80,
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Color(0xFFA71D31),
              ),
              left: BorderSide(
                width: 1,
                color: Color(0xFFA71D31),
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: InkWell(
            onTap: () {
              restaurantInfoScreen(context);
            },
            onHover: (value) => {},
            splashColor: const Color.fromRGBO(171, 22, 22, 1),
            child: Row(
              children: [
                Container(
                  color: Colors.amber,
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(right: 5),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("La petitosa", style: TextStyle(fontSize: 18)),
                    Text("Tipo"),
                    Row(
                      children: [
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 25,
          top: 10,
          child: ClipOval(
            child: Container(
              height: 20,
              width: 20,
              decoration: const ShapeDecoration(
                  shape: CircleBorder(), color: Colors.green),
            ),
          ),
        ),
        const Positioned(
          right: 50,
          bottom: 10,
          child: Text(
            '10m',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}

Future<dynamic> restaurantInfoScreen(BuildContext context) async {
  if (context.mounted) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const RestaurantInfoView(),
      ),
    );
  }
  // No warnings now
}
