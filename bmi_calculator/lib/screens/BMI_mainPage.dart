import 'package:bmi_calculator/screens/user_Imformation.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:flutter/material.dart';

import 'Gender_Select.dart';

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
                    '26.5',
                    style: heightTextStyle,
                  ),
                ],
              ),
            ),
            flex: 4,
          ),
          GenderSelect(),
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
          Expanded(
            child: Container(),
            flex: 1,
          )
        ],
      ),
    );
  }
}
