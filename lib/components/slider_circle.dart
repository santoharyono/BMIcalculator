import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:flutter/material.dart';

class SliderCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: circleSizeAdapted(context),
      height: circleSizeAdapted(context),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor, shape: BoxShape.circle),
      child: Icon(
        Icons.unfold_more,
        color: Colors.white,
        size: 0.6 * circleSizeAdapted(context),
      ),
    );
  }
}
