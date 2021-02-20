import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../utils/screen_utils.dart';
import '../../../widgets/section_label.dart';
/// 关于增加点击事件处理的常见方式
/// @date 2021/02/16
class ClickEventDemo extends StatelessWidget {
  
  final String desc = '''
      一般情况下，我们可以借助于各种样式的 Button 的 onPressed 方法来监听用户的点击事件，但它毕竟也是属于经过高度定制化过的控件，并不满足所有需要监听点击事件的需求场景。
      Material design 组件中提供了 InkWell 控件来实现控件点击后的高亮 ripple 效果，一定程度上可以用来包裹一些大控件，实现点击事件监听。再或者，我们也可以借助于 GestureDetector 来监听用户手势事件。
  ''';
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.amber.shade100,
              child: Text(desc),
              padding: const EdgeInsets.all(6),
            ),
            ScreenUtils.verticalMargin(16),
            SectionLabel('Button 方式'),
            ScreenUtils.verticalMargin(16),
            RaisedButton(
              onPressed: () {
                Fluttertoast.showToast(msg: 'Im a Button.');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
              textColor: Colors.black87,
              color: Colors.lightBlue,
              splashColor: Colors.blueAccent,
              child: Text('我是一个按钮'),
            ),
            ScreenUtils.verticalMargin(16),
            SectionLabel('InkWell 方式'),
            ScreenUtils.verticalMargin(16),
            Material(
              color: Colors.transparent,
              child: InkWell(
                //splashColor: Colors.deepOrange.shade200,
                splashColor: Colors.transparent,
                //highlightColor: Colors.amber,
                onTap: () {
                  Fluttertoast.showToast(msg: 'Im InkWell.');
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      ScreenUtils.verticalMargin(12),
                      SizedBox(
                        child: FlutterLogo(
                          size: 120,
                        ),
                      ),
                      ScreenUtils.verticalMargin(20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black87
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ScreenUtils.verticalMargin(16),
            SectionLabel('GestureDetector 方式'),
            ScreenUtils.verticalMargin(16),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Card(
                  color: Colors.redAccent,
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Center(
                    child: Text('IM a Card', style: TextStyle(fontSize: 28),),
                  ),
                ),
              ),
              onTap: () {
                Fluttertoast.showToast(msg: 'Im GestureDetector.');
              },
            )
          ],
        ),
      ),
    );
  }
}
