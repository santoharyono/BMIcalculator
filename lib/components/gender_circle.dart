import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:flutter/material.dart';

class GenderCirlcle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSize(context),
      height: circleSize(context),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color.fromRGBO(244, 244, 244, 1.0)),
    );
  }
}
