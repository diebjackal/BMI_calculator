import 'package:bmi_calculator/utility/colors.dart';
import 'package:flutter/material.dart';
import 'choice_gender.dart';
import 'package:provider/provider.dart';
import 'package:bmi_calculator/myProvider.dart';

class GenderSelectView extends StatefulWidget {
  @override
  _GenderSelectViewState createState() => _GenderSelectViewState();
}

class _GenderSelectViewState extends State<GenderSelectView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<MyProvider>(
        builder: (context, value, child) => Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              viewChoiceGender(
                index: 1,
                genderContainerColour: value.idx == 0 ? maleColor : whiteColor,
                iconColour: value.idx == 0 ? whiteColor : maleColor,
              ),
              viewChoiceGender(
                index: 0,
                genderContainerColour:
                    value.idx == 1 ? femaleColor : whiteColor,
                iconColour: value.idx == 1 ? whiteColor : femaleColor,
              ),
            ],
          ),
        ),
      ),
      flex: 2,
    );
  }
}
