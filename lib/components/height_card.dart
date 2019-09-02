import 'package:bmi_calculator/components/card_title.dart';
import 'package:bmi_calculator/components/height_picker.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  final int height;

  HeightCard({Key key, this.height}) : super(key: key);

  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  int height;

  @override
  void initState() {
    super.initState();
    height = widget.height ?? 170;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            EdgeInsets.only(top: WidgetUtil.screenAwareSize(16.0, context)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CardTitle(
              'HEIGHT',
              subtitle: '(cm)',
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(
                  bottom: WidgetUtil.screenAwareSize(8.0, context)),
              child: LayoutBuilder(builder: (context, constraints) {
                return HeightPicker(
                  widgetHeight: constraints.maxHeight,
                  height: height,
                  onChange: (val) {
                    setState(() {
                      height = val;
                    });
                  },
                );
              }),
            ))
          ],
        ),
      ),
    );
  }
}
