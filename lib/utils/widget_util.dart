import 'package:flutter/material.dart';

class WidgetUtil {
  static const double baseHeight = 650.0;

  double screenAwareSize(double size, BuildContext context) {
    return size * MediaQuery.of(context).size.height / baseHeight;
  }
}
