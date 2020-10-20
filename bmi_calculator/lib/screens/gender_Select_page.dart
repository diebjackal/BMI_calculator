import 'package:bmi_calculator/screens/BMI_MainPage.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class GenderSelect extends StatefulWidget {
  @override
  _GenderSelectState createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ToggleSwitch(
            minWidth: 150.0,
            minHeight: 65.0,
            cornerRadius: 20.0,
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.grey,
            inactiveFgColor: Colors.white,
            labels: ['Male', 'Female'],
            icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
            activeBgColors: [Colors.blue, Colors.pink],
            onToggle: (index) {
              print('switched to: $index');
              index == 0 ? print('Male') : print('Female');
            },
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMIMainPage(),
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
