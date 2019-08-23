import 'package:bmi_calculator/components/card_title.dart';
import 'package:bmi_calculator/components/gender_circle.dart';
import 'package:bmi_calculator/components/gender_icon_translated.dart';
import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  final Gender initialGender;

  GenderCard({Key key, this.initialGender}) : super(key: key);

  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.only(top: WidgetUtil.screenAwareSize(8.0, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CardTitle('GENDER'),
              Padding(
                padding: EdgeInsets.only(
                    top: WidgetUtil.screenAwareSize(16.0, context)),
                child: _draMainStack(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _draMainStack() {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _drawCircleIndicator(),
        GenderIconTranslated(
          gender: Gender.male,
        ),
        GenderIconTranslated(
          gender: Gender.other,
        ),
        GenderIconTranslated(
          gender: Gender.female,
        )
      ],
    );
  }

  Widget _drawCircleIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[GenderCirlcle()],
    );
  }
}
