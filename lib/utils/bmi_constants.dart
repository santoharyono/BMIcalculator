import 'dart:math' as math;

import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

double circleSize(BuildContext context) =>
    WidgetUtil.screenAwareSize(80, context);

const double defaultGenderAngle = math.pi / 4;

Map<Gender, double> genderAngles = {
  Gender.female: -defaultGenderAngle,
  Gender.other: 0.0,
  Gender.male: defaultGenderAngle
};

const TextStyle titleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(14, 24, 35, 1.0));

const subtitleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 8.0,
    color: Color.fromRGBO(78, 102, 114, 1.0));
