import 'package:bmi_calculator/utility/colors.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:bmi_calculator/utility/constants.dart';
import 'package:flutter/material.dart';

class GenderSelectView extends StatefulWidget {
  @override
  _GenderSelectViewState createState() => _GenderSelectViewState();
}

class _GenderSelectViewState extends State<GenderSelectView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            viewChoiceGender(index: 0),
            viewChoiceGender(index: 1),
          ],
        ),
      ),
      flex: 2,
    );
  }

  Widget viewChoiceGender({int index}) {
    return Expanded(
      child: Container(
        height: fullSizeContainer,
        width: fullSizeContainer,
        child: Icon(
          iconList[index],
          color: iconColorList[index],
          size: 50.0,
        ),
        margin: MSizePadding,
        decoration: KGenderSelectContainerDecoration(),
      ),
    );
  }
}
