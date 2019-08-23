import 'package:bmi_calculator/components/gender_line.dart';
import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderIconTranslated extends StatelessWidget {
  static final Map<Gender, String> _genderImages = {
    Gender.female: 'asset/images/female.svg',
    Gender.male: 'asset/images/male.svg',
    Gender.other: 'asset/images/other.svg'
  };

  final Gender gender;

  GenderIconTranslated({Key key, this.gender}) : super(key: key);

  bool get _isOtherGender => gender == Gender.other;
  String get _assetName => _genderImages[gender];
  double _iconSize(BuildContext context) {
    return WidgetUtil.screenAwareSize(_isOtherGender ? 22.0 : 16.0, context);
  }

  double _genderLeftPadding(BuildContext context) {
    return WidgetUtil.screenAwareSize(_isOtherGender ? 8.0 : 0.0, context);
  }

  @override
  Widget build(BuildContext context) {
    Widget icon = Padding(
      padding: EdgeInsets.only(left: _genderLeftPadding(context)),
      child: SvgPicture.asset(
        _assetName,
        height: _iconSize(context),
        width: _iconSize(context),
      ),
    );

    Widget rotatedIcon = Transform.rotate(
      angle: genderAngles[gender],
      child: icon,
    );

    Widget iconWithALine = Padding(
      padding: EdgeInsets.only(bottom: circleSize(context) / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[rotatedIcon, GenderLine()],
      ),
    );

    Widget rotatedIconWithALine = Transform.rotate(
      angle: genderAngles[gender],
      alignment: Alignment.bottomCenter,
      child: iconWithALine,
    );

    Widget centeredIconWithALine = Padding(
      padding: EdgeInsets.only(bottom: circleSize(context) / 2),
      child: rotatedIconWithALine,
    );

    return centeredIconWithALine;
  }
}
