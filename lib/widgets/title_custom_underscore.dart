import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithCustomUnderscore extends StatelessWidget {
  final String text;

  const TitleWithCustomUnderscore({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: defaulyPadding / 4,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: defaulyPadding / 4),
              height: 7,
              color: primaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
