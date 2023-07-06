import 'package:flutter/material.dart';
import 'package:rodsify/components/mainComponent/recomendationsBar/recomendedButton.dart';

class RecomendationList extends StatefulWidget {
  const RecomendationList({super.key, required this.title});

  final String title;
  @override
  State<RecomendationList> createState() => _RecomendationListState();
}

class _RecomendationListState extends State<RecomendationList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(167, 29, 49, 1),
                width: 2,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
          ),
          padding: const EdgeInsets.only(right: 10, bottom: 0),
          margin: const EdgeInsets.only(left: 10, bottom: 10),
          child: Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          height: 110,
          margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                RecomendedButton(),
                RecomendedButton(),
                RecomendedButton(),
                RecomendedButton(),
              ]),
        ),
      ],
    );
  }
}
