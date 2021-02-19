import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/theme/theme_config.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/section_label.dart';
/// Text field sample usage.
/// @date 2021/02/17
class InputDemo extends StatefulWidget {
  @override
  _InputDemoState createState() => _InputDemoState();
}

class _InputDemoState extends State<InputDemo> {

  bool _showPwd = true;
  final _focusNode = FocusNode();
  static final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionLabel('默认输入框'),
          ScreenUtils.verticalMargin(16),
          TextField(),
          ScreenUtils.verticalMargin(20),
          SectionLabel('自定义样式输入框'),
          ScreenUtils.verticalMargin(16),
          TextField(
            controller: _textEditingController,
            keyboardType: TextInputType.number,
            obscureText: _showPwd,
            cursorColor: Colors.redAccent,
            cursorRadius: Radius.circular(2.0),
            cursorWidth: 3,
            maxLength: 10,
            style: TextStyle(
              color: ThemeConfigs.titleColor,
              fontSize: 18.0,
              fontFamily: 'serif',
              fontWeight: FontWeight.w600,
            ),
            focusNode: _focusNode,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10.0),
              labelText: '请输入你的账号',
              helperText: '账号格式为10位以内纯数字',
              //errorText: '账号错误！',
              prefixIcon: Icon(Icons.account_circle_outlined),
              suffix: IconButton(
                icon: Icon(_showPwd ? Icons.visibility_off : Icons.visibility_outlined),
                iconSize: 16,
                padding: const EdgeInsets.all(6.0),
                onPressed: () {
                  setState(() {
                    _showPwd = !_showPwd;
                  });
                },
              ),
              fillColor: Colors.deepPurple.shade200,
              filled: true,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0)
              ),
            ),
          ),
          ScreenUtils.verticalMargin(20),
          OutlineButton(
            onPressed: () {
              _clearContent();
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            textColor: Colors.black87,
            color: Colors.lightBlue,
            splashColor: Colors.blue,
            child: Text('清除输入框内容'),
          ),
          ScreenUtils.verticalMargin(12),
          OutlineButton(
            onPressed: () {
              if (_focusNode.hasFocus) {
                _hideFocus();
              } else {
                _requestFocus();
              }
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            textColor: Colors.black87,
            color: Colors.lightBlue,
            splashColor: Colors.blue,
            child: Text('切换输入框焦点状态'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (_focusNode != null) {
      _focusNode.dispose();
    }
    super.dispose();
  }

  void _hideFocus() {
    _focusNode.unfocus();
  }

  void _requestFocus() {
    FocusScope.of(context).requestFocus(_focusNode);
  }

  void _clearContent() {
    _textEditingController.text = '';
  }
}
