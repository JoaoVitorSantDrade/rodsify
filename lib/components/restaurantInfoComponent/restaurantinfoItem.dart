import 'package:flutter/material.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 50, right: 50),
      child: Material(
        elevation: 10,
        type: MaterialType.card,
        child: InkWell(
          onTap: () => {},
          onHover: (value) {},
          splashColor: Theme.of(context).primaryColor,
          child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  color: Theme.of(context).primaryColor,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Título"),
                    Text("Alergênicos"),
                    Text("Preço")
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
