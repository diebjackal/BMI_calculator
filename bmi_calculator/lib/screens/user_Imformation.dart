import 'package:bmi_calculator/utilits/colors.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:flutter/material.dart';

int age = 20;
int height = 180;
int weight = 60;

class ageView extends StatelessWidget {
  int index;
  ageView({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: colorList[index],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$age',
              style: userInformationTextStyle,
            ),
            Container(
              margin: userInformationMSizePadding,
              child: Text(
                '살',
                style: userInformationUnitTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class heightView extends StatelessWidget {
  int index;
  heightView({@required this.index});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: colorList[index],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$height',
              style: userInformationTextStyle,
            ),
            Container(
              margin: userInformationXSizePadding,
              child: Text(
                'cm',
                style: userInformationUnitTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class weightView extends StatelessWidget {
  int index;
  weightView({@required this.index});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: colorList[index],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$weight',
              style: userInformationTextStyle,
            ),
            Container(
              margin: userInformationXSizePadding,
              child: Text(
                'Kg',
                style: userInformationUnitTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
