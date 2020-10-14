import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilits/decorations.dart';

class BMI_mainPage extends StatefulWidget {
  @override
  _BMI_mainPageState createState() => _BMI_mainPageState();
}

class _BMI_mainPageState extends State<BMI_mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Gender(),
                      Height(),
                    ],
                  ),
                ),
                Weight(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget Gender() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: veiwExpanted(),
      ),
    );
  }

  Widget Height() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: veiwExpanted(),
      ),
    );
  }

  Widget Weight() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: veiwExpanted(),
      ),
    );
  }
}
