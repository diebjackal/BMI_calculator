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
      body: Column(
        children: <Widget>[
          Text(
            "정보를 입력해 주세요",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: XSizePadding,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff2c3e50),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('남자', style: genderTextStyle),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: XSizePadding,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffe74c3c),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('여자', style: genderTextStyle),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
