import 'package:flutter/material.dart';
import 'package:rodsify/components/restaurantInfoComponent/restaurantinfoItem.dart';

class RestaurantInfoView extends StatefulWidget {
  const RestaurantInfoView({super.key});

  @override
  State<RestaurantInfoView> createState() => _RestaurantInfoViewState();
}

class _RestaurantInfoViewState extends State<RestaurantInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 220,
              color: Theme.of(context).primaryColor,
              child: Stack(children: [
                Positioned(
                  bottom: 0,
                  left: 50,
                  child: Container(
                    width: 240,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Titulo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Tipo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 0,
                    left: 10,
                    child: Column(
                      children: [
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                        Icon(Icons.star_border_rounded),
                      ],
                    ))
              ]),
            ),
            Container(
              height: 120,
              margin: const EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 10),
              color: Theme.of(context).primaryColor,
              child: Stack(children: [
                Positioned(
                  top: 0,
                  left: 50,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Descrição",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec magna lorem, sodales at libero eget, scelerisque hendrerit diam. Nam feugiat erat vel scelerisque vestibulum. Quisque facilisis tempus efficitur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis ac sollicitudin est. Phasellus consectetur elit nec metus porttitor, at laoreet erat porta. Praesent ipsum arcu, pharetra non accumsan nec, commodo sed felis. Fusce vitae urna at enim suscipit fringilla. Etiam venenatis ligula id lorem elementum euismod. Donec a facilisis diam, in malesuada augue. Nam quis tellus sem. Suspendisse tincidunt justo sit amet ipsum interdum bibendum. Nulla sapien urna, sodales sit amet vehicula in, condimentum sit amet eros. Mauris lacus odio, commodo interdum imperdiet non, euismod et eros.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 3,
                  ),
                ),
              ]),
            ),
            Expanded(
              child: ListView(scrollDirection: Axis.vertical, children: [
                RestaurantItem(),
                RestaurantItem(),
                RestaurantItem()
              ]),
            )
          ],
        ),
      )),
    );
  }
}
