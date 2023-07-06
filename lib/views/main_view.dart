import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/advertisementBar/advertiseList.dart';
import 'package:rodsify/components/mainComponent/bottomLocation/bottomBar.dart';
import 'package:rodsify/components/mainComponent/cartView/cartButtom.dart';
import 'package:rodsify/components/mainComponent/recomendationsBar/recomendationList.dart';
import 'package:rodsify/components/mainComponent/restaurantBar/restaurantSelector.dart';
import 'package:rodsify/components/mainComponent/topTypesFoodBar/typesFoodBar.dart';
import '../components/mainComponent/topLocationBar/geolocation.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const RodGeoLocator(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                addAutomaticKeepAlives: true,
                padding: const EdgeInsets.symmetric(vertical: 10),
                children: const [
                  TypeFoodBar(),
                  AdvertiseList(),
                  RecomendationList(title: "Rodizios recomendados!"),
                  RecomendationList(title: "Explosão de sabor!"),
                  RestaurantSelector(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const CartButton(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
