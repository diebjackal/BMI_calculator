import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../calculator_brain.dart';
import 'BMI_MainPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double _height = 180;
  double _weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "정보를 입력해 주세요",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            //
            Container(
              width: fullSizeContainer,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/height.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  RoundIconButton(
                      icon: FontAwesomeIcons.minus,
                      onPressed: () {
                        setState(() {
                          age--;
                        });
                      }),
                  Text(
                    '$age살',
                    style: userInformationSettingTextStyle,
                  ),
                  RoundIconButton(
                      icon: FontAwesomeIcons.plus,
                      onPressed: () {
                        setState(() {
                          age++;
                        });
                      }),
                ],
              ),
            ),
            //
            Container(
              width: fullSizeContainer,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/height.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '${_height.toInt()} cm',
                        style: userInformationSettingTextStyle,
                      ),
                      Slider(
                        value: _height,
                        min: 100,
                        max: 300,
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'images/weight.png',
                    height: getProportionateScreenHeight(130),
                    width: getProportionateScreenWidth(130),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        '${_weight.toInt()} kg',
                        style: userInformationSettingTextStyle,
                      ),
                      Slider(
                        value: _weight,
                        min: 20,
                        max: 150,
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
                      age: age,
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
