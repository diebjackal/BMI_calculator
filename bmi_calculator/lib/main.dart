import 'package:bmi_calculator/utilits/cosntants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: BMI_MainPage(),
    );
  }
}

class BMI_MainPage extends StatefulWidget {
  @override
  _BMI_MainPageState createState() => _BMI_MainPageState();
}

class _BMI_MainPageState extends State<BMI_MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 40),
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    'BMI CALCULATOR',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '26.5',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 90,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              color: Color(0xff75ddad),
            ),
            flex: 4,
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  genderSelect(index: 0),
                  genderSelect(index: 1),
                ],
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorList[0],
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorList[1],
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorList[2],
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(),
            flex: 1,
          )
        ],
      ),
    );
  }

  Widget genderSelect({int index}) {
    dynamic check;

    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {});
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Icon(
            iconList[index],
            size: 50.0,
          ),
          margin: EdgeInsets.all(8),
          decoration: KGenderSelectContainerDecoration(),
        ),
      ),
    );
  }
}
