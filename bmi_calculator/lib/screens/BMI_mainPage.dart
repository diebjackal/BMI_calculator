import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilis/constants.dart';
import 'package:bmi_calculator/utilis/size_Config.dart';

class BMIMainPage extends StatefulWidget {
  @override
  _BMIMainPageState createState() => _BMIMainPageState();
}

class _BMIMainPageState extends State<BMIMainPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: backgroundColors, // 휜색 Color
      body: Column(
        children: <Widget>[
          Text(
            'BMI Calculator',
            style: KTitleTextStyle,
          ),
          Container(
            width: getProportionateScreenWidth(300),
            height: getProportionateScreenHeight(100),
            decoration: BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  '성별',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  width: getProportionateScreenWidth(225),
                  height: getProportionateScreenHeight(40),
                  decoration: KGenderSelectContainerDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _BuildFlatButton(index: 0),
                      _BuildFlatButton(index: 1),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _BuildFlatButton({int index}) {
    return FlatButton(
      onPressed: () {
        setState(() {
          colour = ColorList[index];
          print('press');
        });
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        height: double.infinity,
        child: Icon(iconList[index]),
      ),
    );
  }
}
