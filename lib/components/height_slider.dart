import 'package:bmi_calculator/components/slider_circle.dart';
import 'package:bmi_calculator/components/slider_label.dart';
import 'package:bmi_calculator/components/slider_line.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  final int height;

  HeightSlider({Key key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SliderLabel(height: height),
          Row(
            children: <Widget>[SliderCircle(), Expanded(child: SliderLine())],
          )
        ],
      ),
    );
  }
}
