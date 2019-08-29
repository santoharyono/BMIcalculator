import 'package:flutter/material.dart';

class WeightSlider extends StatelessWidget {
  final int minValue;
  final int maxValue;
  final double width;

  WeightSlider({Key key, this.minValue, this.maxValue, this.width})
      : super(key: key);

  double get itemExtent => width / 3;

  @override
  Widget build(BuildContext context) {
    int itemCount = (maxValue - minValue) + 3;

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final int value = _indexToValue(index);
        bool isExtra = index == 0 || index == itemCount - 1;

        return isExtra
            ? Container()
            : Center(
                child: Text(
                  value.toString(),
                  style: _getTextStyle(),
                ),
              );
      },
      scrollDirection: Axis.horizontal,
      itemExtent: itemExtent,
      itemCount: itemCount,
      physics: BouncingScrollPhysics(),
    );
  }

  int _indexToValue(int index) => minValue + (index - 1);

  TextStyle _getTextStyle() {
    return TextStyle(color: Color.fromRGBO(196, 197, 203, 1.0));
  }
}
