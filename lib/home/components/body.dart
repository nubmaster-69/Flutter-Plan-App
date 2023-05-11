import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';
import 'package:plan_app/home/components/title_with_more_button.dart';
import '../../details/detail_screen.dart';
import '../../model/plan_model.dart';
import 'featured_plan_card.dart';
import 'header_with_searchbox.dart';
import 'recommend_plan_card.dart';

class Body extends StatelessWidget {
  Body({super.key});

  final plans = [
    const Plan(
        name: "Samathan",
        country: "Russian",
        price: 400,
        image: "assets/images/image_1.png"),
    const Plan(
        name: "Angelica",
        country: "Russian",
        price: 500,
        image: "assets/images/image_2.png"),
    const Plan(
        name: "Samathan",
        country: "Russian",
        price: 600,
        image: "assets/images/image_3.png"),
  ];

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
                for (var plan in plans)
                  RecommendPlanCard(
                    size: size,
                    title: plan.name,
                    country: plan.country,
                    image: plan.image,
                    price: plan.price,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            plan: plan,
                          ),
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
          TitleWithMoreButton(
            title: 'Fetured Plans',
            press: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
              right: defaulyPadding,
            ),
            child: Row(
              children: <Widget>[
                FeaturedPlanCard(
                  size: size,
                  image: "assets/images/bottom_img_1.png",
                ),
                FeaturedPlanCard(
                  size: size,
                  image: "assets/images/bottom_img_2.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: defaulyPadding,
          ),
        ],
      ),
    );
  }
}
