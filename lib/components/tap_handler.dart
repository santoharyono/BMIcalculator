import 'package:bmi_calculator/enums/gender.dart';
import 'package:flutter/material.dart';

class TapHandler extends StatelessWidget {
  final Function(Gender) onGenderTapped;

  TapHandler({Key key, this.onGenderTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
            child: GestureDetector(
          onTap: () => onGenderTapped(Gender.female),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () => onGenderTapped(Gender.other),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () => onGenderTapped(Gender.male),
        ))
      ],
    );
  }
}
