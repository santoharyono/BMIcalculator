import 'package:bmi_calculator/components/card_title.dart';
import 'package:bmi_calculator/components/gender_arrow.dart';
import 'package:bmi_calculator/components/gender_circle.dart';
import 'package:bmi_calculator/components/gender_icon_translated.dart';
import 'package:bmi_calculator/components/tap_handler.dart';
import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatefulWidget {
  final Gender initialGender;

  GenderCard({Key key, this.initialGender}) : super(key: key);

  @override
  _GenderCardState createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard>
    with SingleTickerProviderStateMixin {
  AnimationController _arrowAnimationController;
  Gender selectedGender;

  @override
  void initState() {
    super.initState();
    selectedGender = widget.initialGender ?? Gender.other;
    _arrowAnimationController = AnimationController(
        vsync: this,
        lowerBound: -defaultGenderAngle,
        upperBound: defaultGenderAngle,
        value: genderAngles[selectedGender]);
  }

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
    return Container(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _drawCircleIndicator(),
          GenderIconTranslated(
            gender: Gender.female,
          ),
          GenderIconTranslated(
            gender: Gender.other,
          ),
          GenderIconTranslated(
            gender: Gender.male,
          ),
          _drawGestureDetector()
        ],
      ),
    );
  }

  Widget _drawCircleIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GenderCirlcle(),
        GenderArrow(
          listenable: _arrowAnimationController,
        )
      ],
    );
  }

  _drawGestureDetector() {
    return Positioned.fill(
        child: TapHandler(
      onGenderTapped: _setSelectedGender,
    ));
  }

  void _setSelectedGender(Gender gender) {
    setState(() {
      return selectedGender = gender;
    });
    _arrowAnimationController.animateTo(genderAngles[gender],
        duration: Duration(milliseconds: 150));
  }

  @override
  void dispose() {
    _arrowAnimationController.dispose();
    super.dispose();
  }
}
