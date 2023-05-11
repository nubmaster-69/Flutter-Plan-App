import 'package:flutter/material.dart';

import '../../constants.dart';
import 'icon_card.dart';

class ImageWithIcons extends StatelessWidget {
  const ImageWithIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.8,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: defaulyPadding * 3,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            size: 42,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const IconCard(
                        icon: Icon(
                          Icons.wb_sunny_outlined,
                          color: primaryColor,
                          size: 40,
                        ),
                      ),
                      const IconCard(
                        icon: Icon(
                          Icons.wind_power,
                          color: primaryColor,
                          size: 40,
                        ),
                      ),
                      const IconCard(
                        icon: Icon(
                          Icons.water_damage_rounded,
                          color: primaryColor,
                          size: 40,
                        ),
                      ),
                      const IconCard(
                        icon: Icon(
                          Icons.shower_rounded,
                          color: primaryColor,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width * 0.75,
                height: size.height * 0.8,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: primaryColor.withOpacity(0.29),
                    )
                  ],
                  image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
