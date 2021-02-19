
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/diamond_shape.dart';
import 'package:flutter_cases/widgets/section_label.dart';
import 'package:fluttertoast/fluttertoast.dart';
/// Sample for button usage.
/// Such as [FlatButton], [RaisedButton], [IconButton], [FloatingActionButton], [DropdownButton], [OutlineButton]...
/// @date 2021/02/18
class ButtonDemo extends StatefulWidget {
  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {

  String _flatButtonDesc = '''
  FlatButton(
        // 文本内容
        child: Text(txt, semanticsLabel: 'FLAT BUTTON 2'),
        // 按钮颜色
        color: color,
        // 按钮亮度
        colorBrightness: Brightness.dark,
        // 高亮时的背景色
        //highlightColor: Colors.yellow,
        // 失效时的背景色
        disabledColor: Colors.grey,
        // 该按钮上的文字颜色，但是前提是不设置字体自身的颜色时才会起作用
        textColor: Colors.white,
        // 按钮失效时的文字颜色，同样的不能使用文本自己的样式或者颜色时才会起作用
        disabledTextColor: Colors.grey,
        // 按钮主题,主要用于与ButtonTheme和ButtonThemeData一起使用来定义按钮的基色,RaisedButton，FlatButton，OutlineButton，它们是基于环境ButtonTheme配置的
        //ButtonTextTheme.accent，使用模版颜色的;ButtonTextTheme.normal，按钮文本是黑色或白色取决于。ThemeData.brightness;ButtonTextTheme.primary，按钮文本基于。ThemeData.primaryColor.
        textTheme: ButtonTextTheme.normal,
        // 按钮内部,墨汁飞溅的颜色,点击按钮时的渐变背景色，当你不设置高亮背景时才会看的更清楚
        splashColor: Colors.deepPurple,
        // 抗锯齿能力,抗锯齿等级依次递增,none（默认),hardEdge,antiAliasWithSaveLayer,antiAlias
        clipBehavior: Clip.antiAlias,
        padding:
            EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
        shape: (shape is ShapeBorder)
            ? shape
            : Border.all(
                // 设置边框样式
                color: Colors.grey,
                width: 2.0,
                style: BorderStyle.solid,
              ),
        // FlatButton 的点击事件
        onPressed: () {
          // Perform some action
          if (_onPressed is VoidCallback) {
            _onPressed();
          }
        },
        // 改变高亮颜色回掉函数，一个按钮会触发两次，按下后改变时触发一次，松手后恢复原始颜色触发一次
        // 参数 bool，按下后true，恢复false
        onHighlightChanged: (isClick) {
          print(isClick);
        });
  ''';

  final String desc = '''
   官网不推荐直接使用 MaterialButton，它的默认大小是 88 * 36，推荐使用它的子类:
     - FlatButton
     - RaisedButton
     - OutlineButton
     ''';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(desc,
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 1.4,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                background: Paint()..color = Colors.blue.shade200
              ),
            ),
            ScreenUtils.verticalMargin(12),
            // flatButton
            SectionLabel('1. FlatButton'),
            ScreenUtils.verticalMargin(12),
            Wrap(
              direction: Axis.horizontal,
              children: [
                // 文本按钮效果
                FlatButton(
                    onPressed: () {

                    },
                    child: Text('默认按钮'),
                ),
                ScreenUtils.horizontalMargin(12),
                FlatButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))
                  ),
                  textColor: Colors.black87,
                  color: Colors.lightBlue,
                  splashColor: Colors.red,
                  child: Text('自定义样式'),
                ),
                ScreenUtils.horizontalMargin(12),
                SizedBox(
                  width: 180,
                  child: FlatButton(
                    onPressed: () {

                    },
                    shape: Border.all(
                      color: Colors.deepPurple,
                      width: 3.0,
                      style: BorderStyle.solid
                    ),
                    textColor: Colors.white,
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    child: Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('自定义样式'),
                      ],
                    ),
                  ),
                ),

                ScreenUtils.horizontalMargin(12),
                // 置灰状态
                SizedBox(
                  width: 160,
                  child: FlatButton(
                    onPressed: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    disabledColor: Colors.orange.shade200,
                    child: Text('置灰状态'),
                  ),
                ),
              ],
            ),
            ScreenUtils.verticalMargin(12),
            // raisedButton
            SectionLabel('2. RaisedButton'),
            ScreenUtils.verticalMargin(12),
            Wrap(
              direction: Axis.horizontal,
              children: [
                // 文本按钮效果
                RaisedButton(
                  onPressed: () {

                  },
                  child: Text('默认按钮'),
                ),
                ScreenUtils.horizontalMargin(12),
                RaisedButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                  ),
                  textColor: Colors.black87,
                  color: Colors.lightBlue,
                  splashColor: Colors.red,
                  child: Text('自定义样式'),
                ),
                ScreenUtils.horizontalMargin(12),
                SizedBox(
                  width: 180,
                  child: RaisedButton(
                    onPressed: () {

                    },
                    shape: Border.all(
                        color: Colors.deepPurple,
                        width: 3.0,
                        style: BorderStyle.solid
                    ),
                    textColor: Colors.white,
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    child: Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('自定义样式'),
                      ],
                    ),
                  ),
                ),

                ScreenUtils.horizontalMargin(12),
                // 置灰状态
                SizedBox(
                  width: 160,
                  child: RaisedButton(
                    onPressed: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    disabledColor: Colors.orange.shade200,
                    child: Text('置灰状态'),
                  ),
                ),
              ],
            ),
            ScreenUtils.verticalMargin(12),
            // outlineButton
            SectionLabel('3. OutlineButton'),
            Wrap(
              direction: Axis.horizontal,
              children: [
                // 文本按钮效果
                OutlineButton(
                  onPressed: () {

                  },
                  child: Text('默认按钮'),
                ),
                ScreenUtils.horizontalMargin(12),
                OutlineButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                  ),
                  textColor: Colors.black87,
                  color: Colors.lightBlue,
                  splashColor: Colors.red,
                  child: Text('自定义样式'),
                ),
                ScreenUtils.horizontalMargin(12),
                SizedBox(
                  width: 180,
                  child: OutlineButton(
                    onPressed: () {

                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.zero, bottomLeft: Radius.zero, bottomRight: Radius.circular(12)),
                    ),
                    // 默认状态下的边框颜色
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2
                    ),
                    // 点击状态的边框颜色
                    highlightedBorderColor: Colors.black,
                    textColor: Colors.black87,
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    child: Row(
                      children: [
                        Icon(Icons.alarm),
                        Text('自定义样式'),
                      ],
                    ),
                  ),
                ),

                ScreenUtils.horizontalMargin(12),
                // 置灰状态
                SizedBox(
                  width: 160,
                  child: OutlineButton(
                    onPressed: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    color: Colors.orange,
                    splashColor: Colors.redAccent,
                    disabledBorderColor: Colors.grey.shade200,
                    child: Text('置灰状态'),
                  ),
                ),
              ],
            ),
            ScreenUtils.verticalMargin(12),
            // floatActionButton
            SectionLabel('4. FloatingActionButton'),
            ScreenUtils.verticalMargin(12),
            // 自定义样式
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {

                  },
                  splashColor: Colors.blueAccent,
                  tooltip: 'FloatingActionButton',
                  child: Icon(Icons.account_balance_wallet_outlined),
                ),
                ScreenUtils.horizontalMargin(20),
                FloatingActionButton(
                  onPressed: () {

                  },
                  elevation: 12,
                  highlightElevation: 6,
                  mini: true,
                  heroTag: 'another tag',
                  shape: DiamondBorder(),
                  backgroundColor: Colors.deepPurple,
                  splashColor: Colors.red,
                  tooltip: 'FloatingActionButton',
                  child: Icon(Icons.architecture_outlined),
                ),
              ],
            ),
            ScreenUtils.verticalMargin(12),
            // DropDownButton
            SectionLabel('5. DropDownButton'),
            ScreenUtils.verticalMargin(12),
            DropdownButton(
              hint: Row(
                children: [
                  Icon(Icons.account_balance_outlined),
                  ScreenUtils.horizontalMargin(6),
                  Text('下拉选择')
                ],
              ),
              items: [
                DropdownMenuItem(value: 1, child: Text('第一个选项')),
                DropdownMenuItem(value: 2, child: Text('第二个选项')),
                DropdownMenuItem(value: 3, child: Text('第三个选项')),
                DropdownMenuItem(value: 4, child: Text('第四个选项')),
                DropdownMenuItem(value: 5, child: Text('第五个选项')),
              ],
              onChanged: (value) {
                Fluttertoast.showToast(msg: "$value");
                },
            ),
            // PopupMenuButton
            SectionLabel('6. PopupMenuButton'),
            ScreenUtils.verticalMargin(12),
            PopupMenuButton<DriveState>(
              initialValue: DriveState.park,
              // 注意：child 和 icon 属性不能同时使用
              child: Row(
                children: [
                  Icon(Icons.directions_car_outlined),
                  ScreenUtils.horizontalMargin(8),
                  Text('选择汽车状态'),
                ],
              ),
              //icon: Icon(Icons.directions_car_outlined),
              onSelected: (DriveState result) {
                // setState(() { _selection = result; });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<DriveState>>[
                const PopupMenuItem<DriveState>(
                  value: DriveState.start,
                  child: Text('启动汽车'),
                ),
                const PopupMenuItem<DriveState>(
                  value: DriveState.driving,
                  child: Text('汽车行驶中'),
                ),
                const PopupMenuItem<DriveState>(
                  value: DriveState.broken,
                  child: Text('汽车瓦特了'),
                ),
                const PopupMenuItem<DriveState>(
                  value: DriveState.waiting,
                  child: Text('汽车等待红绿灯'),
                ),
                const PopupMenuItem<DriveState>(
                  value: DriveState.park,
                  child: Text('汽车熄火停泊'),
                ),
              ],
            ),
            ScreenUtils.verticalMargin(42),
          ],
        ),
      ),
    );
  }
}

enum DriveState {
  start,
  driving,
  waiting,
  broken,
  park
}
