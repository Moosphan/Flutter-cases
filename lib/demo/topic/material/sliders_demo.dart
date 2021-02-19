
import 'package:flutter/material.dart';
import 'package:flutter_cases/resource/strings.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/section_label.dart';

enum SlidersDemoType {
  sliders,
  rangeSliders,
  customSliders,
}

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

  double _currentValue = 0;
  double _graduatedValue = 0;
  double _startValue = 20;
  double _endValue = 150;

  @override
  Widget build(BuildContext context) {
    RangeValues _rangedValues = RangeValues(_startValue, _endValue);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScreenUtils.verticalMargin(10),
          SectionLabel('1. Normal slider'),
          ScreenUtils.verticalMargin(20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: _currentValue,
              max: 100,
              min: 0,
              label: _currentValue.toString(),
              activeColor: Colors.indigo,
              inactiveColor: Colors.indigo.shade200,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),
          ScreenUtils.verticalMargin(12),
          Text('当前进度值: $_currentValue', style: TextStyle(
            fontSize: 18
          ),),
          ScreenUtils.verticalMargin(12),
          SectionLabel('2. Graduated slider'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Slider(
              value: _graduatedValue,
              max: 200,
              min: 0,
              label: _graduatedValue.round().toString(),
              divisions: 20,
              onChanged: (value) {
                setState(() {
                  _graduatedValue = value;
                });
              },
            ),
          ),
          ScreenUtils.verticalMargin(12),
          SectionLabel('3. Ranged slider'),
          ScreenUtils.verticalMargin(12),
          RangeSlider(
            values: _rangedValues,
            min: 0,
            max: 200,
            divisions: 10,
            labels: RangeLabels(
              _rangedValues.start.round().toString(),
              _rangedValues.end.round().toString(),
            ),
            onChanged: (values) {
              setState(() {
                _startValue = values.start;
                _endValue = values.end;
              });
            },
          ),
          ScreenUtils.verticalMargin(16),
          Text('当前进度范围：${_startValue.toString()} - ${_endValue.toString()}'),

        ],
      ),
    );
  }
}
