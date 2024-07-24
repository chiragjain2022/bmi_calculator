import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.BMI, required this.TextResult, required this.ResultInterpretation});

  final String BMI;
  final String TextResult;
  final String ResultInterpretation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                   style: kTittleTextStyle,
                ),
              ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    TextResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    BMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    ResultInterpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          },
            buttonTittle: 'Re-CALCULATE',
          ),
        ],
      ),
    );
  }
}
