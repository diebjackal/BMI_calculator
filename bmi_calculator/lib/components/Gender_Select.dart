import 'package:bmi_calculator/utilits/colors.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/constants.dart';
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
            genderSelect(index: 0),
            genderSelect(index: 1),
          ],
        ),
      ),
      flex: 2,
    );
  }

  Widget genderSelect({int index}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            if (index == 0) {
              print('girl press');
            } else if (index == 1) {
              print('man press');
            }
          });
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
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
      ),
    );
  }
}
