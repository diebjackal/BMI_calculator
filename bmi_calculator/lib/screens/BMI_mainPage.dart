import 'file:///C:/Users/fnogd/AndroidStudioProjects/bmi_calculator/lib/components/user_Imformation.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/screens/gender_Select_page.dart';
import '../components/Gender_Select.dart';

class BMIMainPage extends StatefulWidget {
  @override
  _BMIMainPageState createState() => _BMIMainPageState();
}

class _BMIMainPageState extends State<BMIMainPage> {
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
                    'BMI CALCULATOR',
                    style: LabelTextStyle,
                  ),
                  Text(
                    '22',
                    style: BMIResultTextStyle,
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
                  ageView(index: 0),
                  heightView(index: 1),
                  weightView(index: 2),
                ],
              ),
            ),
            flex: 2,
          ),
          BottomButton(
            buttonTitle: '다시 계산 하기',
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => GenderSelect(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
