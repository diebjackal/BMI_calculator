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
              context.watch<MyProvider>().age.toString(),
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
              context.watch<MyProvider>().height.toString(),
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
              '${context.watch<MyProvider>().weight.toInt()}',
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
