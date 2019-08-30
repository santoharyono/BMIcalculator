import 'package:bmi_calculator/components/card_title.dart';
import 'package:bmi_calculator/components/weight_background.dart';
import 'package:bmi_calculator/components/weight_slider.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class WeightCard extends StatefulWidget {
  final int initialWeight;

  WeightCard({Key key, this.initialWeight}) : super(key: key);
  @override
  _WeightCardState createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  int weight;

  @override
  void initState() {
    super.initState();
    weight = widget.initialWeight ?? 70;
  }

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
    return WeightBackground(
      child: LayoutBuilder(
          builder: (context, constraints) => WeightSlider(
                minValue: 30,
                maxValue: 110,
                width: constraints.maxWidth,
                value: weight,
                onChanged: (val) {
                  setState(() {
                    weight = val;
                  });
                },
              )),
    );
  }
}
