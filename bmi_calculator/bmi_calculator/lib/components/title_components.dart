import 'package:flutter/material.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';

class TitleContainer extends StatelessWidget {
  TitleContainer({@required this.titleText});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: XSizePadding,
      decoration: inputLabelTextDecoration(),
      child: Text(
        titleText,
        style: inputLabelTextStyle,
      ),
    );
  }
}
