import 'package:flutter/material.dart';
import 'constants.dart';

class Icon_Content extends StatelessWidget {
  Icon_Content({@required this.displayIcon, @required this.displayText});

  final IconData displayIcon;
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          displayIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 13.0,
        ),
        Text(
          displayText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
