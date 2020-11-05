import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/title_components.dart';
import 'package:bmi_calculator/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/myProvider.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'input_Page.dart';

class GenderSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final information = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TitleContainer(titleText: '성별을 선택해주세요'),
            Container(
              child: Icon(
                IconLIst[information.idx],
                size: 200,
              ),
            ),
            Consumer<MyProvider>(
              builder: (context, value, child) => ToggleSwitch(
                minWidth: 200.0,
                minHeight: 50.0,
                initialLabelIndex: 1,
                cornerRadius: 20.0,
                activeFgColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveFgColor: Colors.white,
                labels: ['Male', 'Female'],
                icons: [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                activeBgColors: [Colors.blue, Colors.pink],
                onToggle: (idx) => value.test(idx),
              ),
            ),
            BottomButton(
              buttonTitle: '다음',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
