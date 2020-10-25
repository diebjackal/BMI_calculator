import 'package:bmi_calculator/utility/constants.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:flutter/material.dart';

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
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
      ),
    );
  }
}
