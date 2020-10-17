import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Color> ColorList = [
  Color(0xfffc9fd1),
  Color(0xffffde84),
  Color(0xff84beff)
];

const venusIcon = FontAwesomeIcons.venus;
const marsIcon = FontAwesomeIcons.mars;
List<dynamic> iconList = [marsIcon, venusIcon];

const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

Decoration KGenderSelectContainerDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}
