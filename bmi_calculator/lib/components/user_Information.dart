import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:flutter/material.dart';

class ageView extends StatelessWidget {
  int index;
  int age;
  ageView({@required this.index, @required this.age});

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

// ignore: must_be_immutable
class heightView extends StatelessWidget {
  int index;
  double height;
  heightView({@required this.index, @required this.height});
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
              '${height.toInt()}',
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
  double weight;
  weightView({@required this.index, @required this.weight});
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
              '${weight.toInt()}',
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
