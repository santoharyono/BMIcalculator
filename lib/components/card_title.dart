import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  CardTitle(this.title, {Key key, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: title, style: titleStyle, children: <TextSpan>[
        TextSpan(text: subtitle ?? '', style: subtitleStyle)
      ]),
    );
  }
}
