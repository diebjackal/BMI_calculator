import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

const venusIcon = FontAwesomeIcons.venus;
const marsIcon = FontAwesomeIcons.mars;
List<dynamic> iconList = [marsIcon, venusIcon];

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

Decoration imformationsDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [backgroundColor, endBackgroundColor],
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black87,
        offset: Offset(1, 1),
        blurRadius: 10,
      ),
    ],
  );
}

const BMIResultTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 90,
  color: whiteColor,
);

const LabelTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 20,
  color: whiteColor,
);

const userInformationTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 45,
  fontWeight: FontWeight.w600,
);

const userInformationUnitTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
