import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeightBackground extends StatelessWidget {
  final Widget child;

  WeightBackground({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: WidgetUtil.screenAwareSize(100.0, context),
          decoration: BoxDecoration(
              color: Color.fromRGBO(244, 244, 244, 1.0),
              borderRadius: BorderRadius.circular(
                  WidgetUtil.screenAwareSize(50.0, context))),
          child: child,
        ),
        SvgPicture.asset(
          'asset/images/weight_arrow.svg',
          height: WidgetUtil.screenAwareSize(10.0, context),
          width: WidgetUtil.screenAwareSize(18.0, context),
        )
      ],
    );
  }
}
