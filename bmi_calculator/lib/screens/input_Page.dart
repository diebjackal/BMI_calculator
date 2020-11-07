import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/title_components.dart';
import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'BMI_ResultPage.dart';
import 'package:bmi_calculator/myProvider.dart';
import 'package:provider/provider.dart';

class InputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final information = Provider.of<MyProvider>(context);
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TitleContainer(titleText: '정보를 입력해주세요'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: fullSizeContainer,
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, right: 45, left: 20),
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
                        '${information.age}살',
                        style: userInformationSettingTextStyle,
                      ),
                      Row(
                        children: <Widget>[
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () => information.incrementAge(),
                          ),
                          SizedBox(width: 20),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () => information.decrementAge(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: fullSizeContainer,
              margin: EdgeInsets.symmetric(horizontal: 10),
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
                        '${information.height}cm',
                        style: userInformationSettingTextStyle,
                      ),
                      Consumer<MyProvider>(
                        builder: (context, value, child) => Slider(
                          value: value.height.toDouble(),
                          min: 100,
                          max: 220,
                          onChanged: (val) =>
                              value.incrementHeightValue(val.toInt()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //height
            Container(
              width: fullSizeContainer,
              padding: EdgeInsets.symmetric(vertical: 15),
              margin: EdgeInsets.symmetric(horizontal: 10),
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
                        '${information.weight} kg',
                        style: userInformationSettingTextStyle,
                      ),
                      Consumer<MyProvider>(
                        builder: (context, value, child) => Slider(
                          value: value.weight.toDouble(),
                          min: 10,
                          max: 150,
                          onChanged: (val) =>
                              value.incrementWeightValue(val.toInt()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ), //weight
            BottomButton(
              buttonTitle: '계산하기',
              onTap: () {
                CalculatorBrain calc = CalculatorBrain(
                  height: information.height,
                  weight: information.weight,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIMainPage(
                      bmiResult: calc.calculateBMI(),
                      bodyState: calc.getResult(),
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
