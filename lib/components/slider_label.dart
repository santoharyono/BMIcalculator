import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class SliderLabel extends StatelessWidget {
  final int height;

  SliderLabel({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: WidgetUtil.screenAwareSize(4.0, context),
          bottom: WidgetUtil.screenAwareSize(2.0, context)),
      child: Text(
        '$height',
        style: TextStyle(
            fontSize: selectedLabelFontSize,
            color: Colors.blue,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
