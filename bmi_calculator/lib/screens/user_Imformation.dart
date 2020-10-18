import 'package:bmi_calculator/utilits/colors.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:flutter/material.dart';

class ageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        decoration: BoxDecoration(
          color: ColorList[0],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class heightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        decoration: BoxDecoration(
          color: ColorList[1],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class weightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: XSizePadding,
        decoration: BoxDecoration(
          color: ColorList[2],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
