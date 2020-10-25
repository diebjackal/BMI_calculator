import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'colors.dart';

const venusIcon = FontAwesomeIcons.venus;
const marsIcon = FontAwesomeIcons.mars;
List<dynamic> iconList = [marsIcon, venusIcon];

// ignore: non_constant_identifier_names
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

Decoration inputLabelTextDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(
      color: Colors.black87,
      width: 2,
    ),
  );
}

Decoration inputInformationDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.white,
  );
}

Decoration informationDecoration() {
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

// ignore: non_constant_identifier_names
Decoration BottomButtonDecoration() {
  return BoxDecoration(
    color: backgroundColor,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(15.0),
      topLeft: Radius.circular(15.0),
    ),
  );
}

const BMIBodyStateTextStyle = TextStyle(
  fontSize: 35,
  color: Colors.lightGreenAccent,
  fontWeight: FontWeight.bold,
);

const inputLabelTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
);

const BMIResultTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 90,
  color: whiteColor,
);

const LabelTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25,
  color: whiteColor,
);

const userInformationTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 45,
  fontWeight: FontWeight.w600,
);

const userInformationSettingTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 50,
);

const userInformationUnitTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

const genderTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);
