import 'dart:math' as math;

import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

double circleSize(BuildContext context) =>
    WidgetUtil.screenAwareSize(80, context);

double defaultGenderAngle = math.pi / 4;
Map<Gender, double> genderAngles = {
  Gender.female: -defaultGenderAngle,
  Gender.other: 0.0,
  Gender.male: defaultGenderAngle
};
