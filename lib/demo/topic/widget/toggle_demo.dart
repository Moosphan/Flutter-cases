import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/theme/theme_config.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/section_label.dart';
/// Sample of usage for widgets which have toggle states, such as: [Checkbox], [Switch], [Radio].
/// @date 2021/02/17
class ToggleDemo extends StatefulWidget {
  @override
  _ToggleDemoState createState() => _ToggleDemoState();
}

class _ToggleDemoState extends State<ToggleDemo> {

  bool _checked;
  int _groupValue = 1;
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // checkbox
          SectionLabel('1. CheckBox'),
          ScreenUtils.verticalMargin(16),
          Row(
            children: [
              // 默认样式的checkbox
              Checkbox(
                  value: _checked,
                  tristate: true,
                  onChanged: (selected) {
                    setState(() {
                      _checked = selected;
                    });
                  },
              ),
              // 自定义样式checkbox
              Checkbox(
                value: _checked,
                tristate: true,
                checkColor: Colors.amber,
                activeColor: Colors.deepPurple,
                onChanged: (selected) {
                  setState(() {
                    _checked = selected;
                  });
                },
              ),
              // 不可点击
              Checkbox(
                value: _checked,
                tristate: true,
                onChanged: null,
              ),
            ],
          ),

          // radio
          SectionLabel('2. Radio'),
          ScreenUtils.verticalMargin(16),
          Row(
            children: [
              // 默认样式的radio
              Radio(
                value: 1,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
                groupValue: _groupValue,
              ),
              // 自定义样式radio
              Radio(
                value: 2,
                activeColor: Colors.deepPurple,
                onChanged: (value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
                groupValue: _groupValue,
              ),
              // 不可点击
              Radio(
                value: 3,
                onChanged: null,
                groupValue: _groupValue,
              ),
            ],
          ),

          // switch
          SectionLabel('3. Switch'),
          ScreenUtils.verticalMargin(16),
          Row(
            children: [
              // 默认样式的switch
              Switch(
                value: _selected,
                onChanged: (value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
              // 自定义颜色样式switch
              Switch(
                value: _selected,
                // 开启后圆点thumb的颜色
                activeColor: Colors.deepOrangeAccent,
                activeTrackColor: Colors.greenAccent,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.greenAccent.shade100,
                onChanged: (value) {
                  setState(() {
                    _selected = value;
                  });
                },
              ),
              // 不可点击
              Switch(
                value: _selected,
                onChanged: null,
              ),
              // 自定义背景样式
              Switch(
                value: _selected,
                activeTrackColor: Colors.amber,
                inactiveTrackColor: Colors.amber.shade100,
                activeThumbImage: AssetImage('assets/images/avatar_rogemon.png'),
                inactiveThumbColor: Colors.greenAccent,
                onChanged: (value) {
                  setState(() {
                    _selected = value;
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
