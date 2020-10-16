import 'package:bmi_calculator/utilis/constants.dart';
import 'package:flutter/material.dart';

class buildweight extends StatefulWidget {
  @override
  _buildweightState createState() => _buildweightState();
}

class _buildweightState extends State<buildweight> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: <Widget>[
              Text(
                '몸무게',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text('${weight.toString()}', textScaleFactor: 2.5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _buildRawMaterialButton(index: 0),
                    _buildRawMaterialButton(index: 1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRawMaterialButton({int index}) {
    return RawMaterialButton(
      onPressed: () {
        setState(() {
          if (index == 1) {
            weight--;
          } else {
            weight++;
          }
        });
      },
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(IconList[index], size: 35.0),
      padding: EdgeInsets.all(10.0),
      shape: CircleBorder(),
    );
  }
}
