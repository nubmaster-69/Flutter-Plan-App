import 'package:flutter/material.dart';

import '../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({Key? key, required this.icon}) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: defaulyPadding,
      ),
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: primaryColor.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15, -25),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: icon,
    );
  }
}
