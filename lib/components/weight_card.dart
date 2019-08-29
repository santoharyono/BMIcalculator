import 'package:bmi_calculator/components/card_title.dart';
import 'package:bmi_calculator/components/weight_background.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {
  @override
  _WeightCardState createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            EdgeInsets.only(top: WidgetUtil.screenAwareSize(32.0, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CardTitle('WEIGHT', subtitle: '(KG)'),
            Expanded(
                child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: _drawSlider(),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _drawSlider() {
    return WeightBackground();
  }
}
