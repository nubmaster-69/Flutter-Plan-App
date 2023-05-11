import 'package:flutter/material.dart';

import '../../constants.dart';

class FeaturedPlanCard extends StatelessWidget {
  const FeaturedPlanCard({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          left: defaulyPadding,
          top: defaulyPadding / 2,
          bottom: defaulyPadding / 2,
        ),
        width: size.width * 0.8,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
