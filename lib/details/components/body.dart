import 'package:flutter/material.dart';
import 'package:plan_app/constants.dart';
import 'package:plan_app/model/plan_model.dart';

import 'image_with_icons.dart';

class DetailBody extends StatelessWidget {
  final Plan plan;
  const DetailBody({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImageWithIcons(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 36,
              horizontal: defaulyPadding,
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "${plan.name}\n",
                    style: const TextStyle(
                      fontSize: 32,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: plan.country,
                        style: const TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  '\$${plan.price}',
                  style: const TextStyle(
                    color: primaryColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
