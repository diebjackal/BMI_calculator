import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:bmi_calculator/myProvider.dart';

class GenderSelectButton extends StatelessWidget {
  GenderSelectButton({@required this.activeBgColors, @required this.labelText});
  final dynamic activeBgColors;
  final dynamic labelText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Consumer<MyProvider>(
        builder: (context, value, child) => ToggleSwitch(
          minWidth: 200.0,
          minHeight: 65.0,
          initialLabelIndex: value.idx,
          cornerRadius: 80.0,
          activeFgColor: Colors.white,
          inactiveBgColor: Colors.grey,
          inactiveFgColor: Colors.white,
          labels: labelText,
          fontSize: 20,
          iconSize: 30,
          activeBgColors: activeBgColors,
          icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
          onToggle: (idx) => value.test(idx),
        ),
      ),
    );
  }
}
