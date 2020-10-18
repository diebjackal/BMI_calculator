import 'package:bmi_calculator/screens/user_Imformation.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/cosntants.dart';
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
              padding: EdgeInsets.only(top: 40),
              margin: EdgeInsets.only(bottom: 15),
              width: fullSizeContainer,
              decoration: imformationsDecoration(),
              child: Column(
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
                  ageView(),
                  heightView(),
                  weightView(),
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
