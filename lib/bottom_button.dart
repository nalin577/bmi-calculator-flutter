import 'package:flutter/material.dart';
import 'constants.dart';

class Bottom_Button extends StatelessWidget {
  Bottom_Button({this.onTap, this.buttonTitle});

  final Function onTap;
  final buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kButtonlabelTextStyle,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: kBottomContainerColour),
        margin: EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
