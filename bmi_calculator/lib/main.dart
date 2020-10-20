import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/gender_Select_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
  theme:
  ThemeData(fontFamily: 'RussoOne');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bmi_Calculator',
      debugShowCheckedModeBanner: false,
      home: GenderSelect(),
    );
  }
}
