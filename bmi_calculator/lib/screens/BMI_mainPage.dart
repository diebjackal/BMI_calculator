import 'package:bmi_calculator/components/user_Information.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/input_Page.dart';
import '../components/Gender_Select.dart';

class BMIMainPage extends StatelessWidget {
  BMIMainPage(
      {@required this.bmiResult,
      @required this.bodyState,
      @required this.weight,
      @required this.height,
      @required this.age});

  final String bmiResult;
  final String bodyState;
  final double weight;
  final double height;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: fullSizeContainer,
              decoration: imformationsDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'BMI 계산 결과',
                    style: LabelTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: BMIResultTextStyle,
                  ),
                  Text(
                    bodyState,
                    style: BMIBodyStateTextStyle,
                  ),
                ],
              ),
            ),
            flex: 4,
          ),
          GenderSelectView(),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  ageView(index: 0, age: age),
                  heightView(index: 1, height: height),
                  weightView(index: 2, weight: weight),
                ],
              ),
            ),
            flex: 2,
          ),
          BottomButton(
            buttonTitle: '다시 계산 하기',
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          ),
        ],
      ),
    );
  }
}
