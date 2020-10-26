import 'package:bmi_calculator/screens/choice_Gender_Page.dart';
import 'package:bmi_calculator/screens/input_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bmi_Calculator',
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
