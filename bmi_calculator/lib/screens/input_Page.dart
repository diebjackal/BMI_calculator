import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator_brain.dart';
import 'BMI_ResultPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double _height = 180;
  double _weight = 60;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: XSizePadding,
              decoration: inputLabelTextDecoration(),
              child: Text(
                "정보를 입력해 주세요",
                style: inputLabelTextStyle,
              ),
            ),
            Container(
              width: fullSizeContainer,
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 60, left: 20),
              decoration: inputInformationDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/ageIcon.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '$_age살',
                        style: userInformationSettingTextStyle,
                      ),
                      Row(
                        children: <Widget>[
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  _age++;
                                });
                              }),
                          SizedBox(width: 20),
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: fullSizeContainer,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: inputInformationDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/height.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '${_height.toInt()} cm',
                        style: userInformationSettingTextStyle,
                      ),
                      Slider(
                        value: _height,
                        min: 100,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            _height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ), //height
            Container(
              width: fullSizeContainer,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: inputInformationDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/weightIcon.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '${_weight.toInt()} kg',
                        style: userInformationSettingTextStyle,
                      ),
                      Slider(
                        value: _weight,
                        min: 30,
                        max: 140,
                        onChanged: (double value) {
                          setState(() {
                            _weight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ), //weight
            BottomButton(
              buttonTitle: '계산하기',
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: _height, weight: _weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIMainPage(
                      bmiResult: calc.calculateBMI(),
                      bodyState: calc.getResult(),
                      weight: _weight,
                      height: _height,
                      age: _age,
                    ),
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
