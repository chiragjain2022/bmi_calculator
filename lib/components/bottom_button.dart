import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap, required this.buttonTittle});

  final String buttonTittle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTittle,
            style: kLargeButtonText,
          ),
        ),
        height: kBottomContainerHeight,
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
      ),
    );
  }
}