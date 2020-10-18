import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:bmi_calculator/utilits/cosntants.dart';
import 'package:flutter/material.dart';

class GenderSelect extends StatefulWidget {
  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
          setState(() {});
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          height: fullSizeContainer,
          width: fullSizeContainer,
          child: Icon(
            iconList[index],
            size: 50.0,
          ),
          margin: MSizePadding,
          decoration: KGenderSelectContainerDecoration(),
        ),
      ),
    );
  }
}
