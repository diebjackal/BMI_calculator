import 'package:bmi_calculator/components/user_Information.dart';
import 'package:bmi_calculator/screens/gender_select_page.dart';
import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import '../components/selected_Gender.dart';

class BMIMainPage extends StatelessWidget {
  BMIMainPage({@required this.bmiResult, @required this.bodyState});

  final String bmiResult;
  final String bodyState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        child: Column(
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
                    ageView(),
                    heightView(),
                    weightView(),
                  ],
                ),
              ),
              flex: 2,
            ),
            BottomButton(
              buttonTitle: '다시 계산하기',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenderSelectPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
