import 'package:bmi_calculator/utilits/constants.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderChoice extends StatelessWidget {
  GenderChoice(
      {@required this.genderTitle,
      @required this.onTap,
      @required this.icon,
      @required this.colour});
  final Function onTap;
  final String genderTitle;
  final dynamic icon;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            Text(
              genderTitle,
              style: genderTextStyle,
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15),
        ),
        width: fullSizeContainer,
        height: 100,
      ),
    );
  }
}
