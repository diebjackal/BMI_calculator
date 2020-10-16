import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color colour = Colors.white;

const venusIcon = FontAwesomeIcons.venus;
const marsIcon = FontAwesomeIcons.mars;

const marsColor = Color(0xff2a9df4);
const venusColor = Color(0xffffb7c5);

const backgroundColors = Color.fromRGBO(244, 245, 251, 0.9);

List<dynamic> iconList = [marsIcon, venusIcon];
List<Color> ColorList = [marsColor, venusColor];

const KTitleTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

final KGenderSelectContainerDecoration = BoxDecoration(
  color: colour,
  borderRadius: BorderRadius.circular(15),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 3,
      blurRadius: 6,
      offset: Offset(0, 3), // changes position of shadow
    ),
  ],
);
