import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/myProvider.dart';
import 'package:provider/provider.dart';

class ageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: AgeColors,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${context.watch<MyProvider>().age}',
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
  double height;
  heightView({@required this.height});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: heightColors,
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
  double weight;
  weightView({@required this.weight});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        height: fullSizeContainer,
        decoration: BoxDecoration(
          color: weightColors,
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
