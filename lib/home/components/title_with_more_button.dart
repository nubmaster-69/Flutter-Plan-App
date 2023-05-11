import 'package:flutter/material.dart';

import '../../constants.dart';
import 'title_custom_underscore.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const TitleWithMoreButton(
      {Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaulyPadding,
      ),
      child: Row(
        children: [
          TitleWithCustomUnderscore(
            text: title,
          ),
          const Spacer(),
          SizedBox(
            height: 28,
            child: ElevatedButton(
              onPressed: press,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Text(
                "More",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
