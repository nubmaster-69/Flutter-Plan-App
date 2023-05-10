import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';
import 'package:plan_app/widgets/title_with_more_button.dart';
import 'header_with_searchbox.dart';
import 'recommend_plan_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recommended",
            press: () {
              print("show more!");
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              right: defaulyPadding,
            ),
            child: Row(
              children: [
                RecomendPlanCard(
                  size: size,
                  title: "Samathan",
                  country: "Russian",
                  image: "assets/images/image_1.png",
                  price: 400,
                  press: () {},
                ),
                RecomendPlanCard(
                  size: size,
                  title: "Samathan",
                  country: "Russian",
                  image: "assets/images/image_2.png",
                  price: 400,
                  press: () {},
                ),
                RecomendPlanCard(
                  size: size,
                  title: "Samathan",
                  country: "Russian",
                  image: "assets/images/image_3.png",
                  price: 400,
                  press: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
