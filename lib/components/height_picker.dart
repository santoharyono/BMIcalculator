import 'package:bmi_calculator/components/height_slider.dart';
import 'package:bmi_calculator/utils/bmi_constants.dart';
import 'package:bmi_calculator/utils/widget_util.dart';
import 'package:flutter/material.dart';

class HeightPicker extends StatefulWidget {
  final int maxHeight;
  final int minHeight;
  final int height;
  final double widgetHeight;
  final ValueChanged<int> onChange;

  HeightPicker(
      {Key key,
      this.maxHeight = 190,
      this.minHeight = 145,
      this.height,
      this.widgetHeight,
      this.onChange})
      : super(key: key);

  int get totalUnits => maxHeight - minHeight;

  @override
  _HeightPickerState createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  double get _pixelsPerUnit => _drawingHeight / widget.totalUnits;

  double get _sliderPosition {
    double halfOfBottomLabel = labelsFontSize / 2;
    int unitsFromBottom = widget.height - widget.minHeight;

    return halfOfBottomLabel + unitsFromBottom * _pixelsPerUnit;
  }

  double get _drawingHeight {
    double totalHeight = widget.widgetHeight;
    double marginBottom = marginBottomAdapted(context);
    double marginTop = marginTopAdapted(context);

    return totalHeight - (marginBottom + marginTop + labelsFontSize);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[_drawSlider(), _drawLabels()],
    );
  }

  Widget _drawLabels() {
    int labelsToDisplay = widget.totalUnits ~/ 5 + 1;
    List<Widget> labels = List.generate(labelsToDisplay, (idx) {
      return Text(
        '${widget.maxHeight - 5 * idx}',
        style: labelTextStyle,
      );
    });
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
            right: WidgetUtil.screenAwareSize(12, context),
            bottom: marginBottomAdapted(context),
            top: marginBottomAdapted(context)),
        child: Column(
          children: labels,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    );
  }

  Widget _drawSlider() {
    return Positioned(
      child: HeightSlider(height: widget.height),
      left: 0.0,
      right: 0.0,
      bottom: _sliderPosition,
    );
  }
}
