import 'package:bmi_calculator/utility/constants.dart';
import 'package:bmi_calculator/utility/container_SIze.dart';
import 'package:flutter/material.dart';

class viewChoiceGender extends StatelessWidget {
  viewChoiceGender(
      {@required this.index, this.genderContainerColour, this.iconColour});
  final Color genderContainerColour;
  final Color iconColour;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: fullSizeContainer,
        width: fullSizeContainer,
        child: Icon(
          iconList[index],
          color: iconColour,
          size: 50.0,
        ),
        margin: MSizePadding,
        decoration: BoxDecoration(
          color: genderContainerColour,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
