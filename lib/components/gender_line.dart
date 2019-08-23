import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class GenderLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: WidgetUtil.screenAwareSize(6.0, context),
          top: WidgetUtil.screenAwareSize(8.0, context)),
      child: Container(
        height: WidgetUtil.screenAwareSize(8.0, context),
        width: 1.0,
        color: Color.fromRGBO(216, 217, 223, 0.54),
      ),
    );
  }
}
