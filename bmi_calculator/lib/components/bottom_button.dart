import 'package:bmi_calculator/utilits/constants.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: LabelTextStyle,
          ),
        ),
        decoration: BottomButtonDecoration(),
        width: fullSizeContainer,
        height: 80.0,
      ),
    );
  }
}
