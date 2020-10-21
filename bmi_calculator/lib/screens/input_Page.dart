import 'package:bmi_calculator/utilits/container_SIze.dart';
import 'package:flutter/material.dart';

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
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: XSizePadding,
                  decoration: BoxDecoration(
                    color: Color(0xffe74c3c),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
