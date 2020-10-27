import 'package:bmi_calculator/components/user_Information.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/input_Page.dart';
import '../components/selected_Gender.dart';

class BMIMainPage extends StatelessWidget {
  BMIMainPage({
    @required this.bmiResult,
    @required this.bodyState,
    @required this.height,
    @required this.age,
    @required this.weight,
  });

  final String bmiResult;
  final String bodyState;
  double height = 180;
  double weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffECECEC),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: fullSizeContainer,
              decoration: informationDecoration(),
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
                  ageView(age: age),
                  heightView(height: height),
                  weightView(weight: weight),
                ],
              ),
            ),
            flex: 2,
          ),
          BottomButton(
            buttonTitle: '다시 계산하기',
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
