import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.BMIResult, this.BMIResultPlan, this.BMIResultText});
  final String BMIResult;
  final String BMIResultText;
  final String BMIResultPlan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Center(
            child: Text(
              'YOUR RESULT',
              style: kTitleTextlabelTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      BMIResult,
                      style: kBMITxetLabelStyle,
                    ),
                    Text(
                      BMIResultText,
                      style: kBMIReslutlabelTextStyle,
                    ),
                    Text(
                      BMIResultPlan,
                      textAlign: TextAlign.center,
                      style: kBMIFuturePlanlabelTextStyle,
                    )
                  ],
                ),
              )),
          Expanded(
              child: Bottom_Button(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ))
        ],
      ),
    );
  }
}
