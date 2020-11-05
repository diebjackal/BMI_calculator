import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/gender_select_button.dart';
import 'package:bmi_calculator/components/title_components.dart';
import 'package:bmi_calculator/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/myProvider.dart';
import 'package:provider/provider.dart';

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
                iconLIst[information.idx],
                size: 200,
              ),
            ),
            GenderSelectButton(
              activeBgColors: [Colors.blue, Colors.pink],
              labelText: ['Male', 'Female'],
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
