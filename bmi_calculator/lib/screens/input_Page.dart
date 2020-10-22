import 'package:bmi_calculator/components/gender_choice.dart';
import 'package:bmi_calculator/utilits/colors.dart';
import 'package:bmi_calculator/utilits/constants.dart';
import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "정보를 입력해 주세요",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: GenderChoice(
                  onTap: () {},
                  genderTitle: '남자',
                  icon: FontAwesomeIcons.mars,
                  colour: maleColors,
                ),
              ),
              Expanded(
                child: GenderChoice(
                  onTap: () {},
                  genderTitle: '여자',
                  icon: FontAwesomeIcons.venus,
                  colour: femaleColors,
                ),
              ),
            ],
          ),
          // Container(
          //   width: fullSizeContainer,
          //   height: 150,
          //   color: Colors.red,
          // ),
          // Container(
          //   width: fullSizeContainer,
          //   height: 150,
          //   color: Colors.blue,
          // ),
          // Container(
          //   width: 150,
          //   height: 90,
          //   color: Colors.blue,
          // ),
        ],
      ),
    );
  }
}
