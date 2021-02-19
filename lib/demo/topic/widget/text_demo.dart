
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
/// Text demo.
class TextDemoPage extends StatelessWidget {
  const TextDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text('普通文字'),
          SizedBox(height: 12),
          Text('缩放文字', textScaleFactor: 1.8,),
          SizedBox(height: 12),
          Text('带样式带文字效果一', style: TextStyle(
            color: Colors.amber,
            fontStyle: FontStyle.italic,
            decorationStyle: TextDecorationStyle.double,
            background: Paint()..color = Colors.blue,
            fontSize: 18.0
          ),),
          SizedBox(height: 12),
          Text('带样式带文字效果二', style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'serif',
            letterSpacing: 1.6,
            decoration: TextDecoration.lineThrough,
            decorationStyle: TextDecorationStyle.dashed,
          ),),
          SizedBox(height: 12),
          Text('带样式带文字效果三', style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 18.0,
            letterSpacing: 3.2,
            decorationStyle: TextDecorationStyle.dotted,
            decoration: TextDecoration.underline,
            decorationColor: Colors.deepPurple
          ),),
          SizedBox(height: 12),
          Text('文字溢出效果：从前有座山，山里有个庙，庙里有几个和尚一起挑水喝', style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              letterSpacing: 2.2,
              height: 1.2
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,),
          SizedBox(height: 12),
          Text('The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given styles TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
            ),
            maxLines: 6,
            strutStyle: StrutStyle(
              fontFamily: 'serif',
              fontSize: 14.0,
              leading: 2.0,
              forceStrutHeight: true,
              debugLabel: 'text paragraph'
            ),
          ),
          SizedBox(height: 12),
          // rich text
          RichText(
            text: TextSpan(
              children: <InlineSpan>[
                TextSpan(
                    text: '这是一个',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 22.0
                    )
                ),
                TextSpan(
                    text: '富文本样式的',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic
                    )
                ),
                TextSpan(
                    text: '文字内容',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w200,
                      decorationColor: Colors.redAccent,
                      decorationStyle: TextDecorationStyle.solid,
                      decoration: TextDecoration.underline,
                      decorationThickness: 0.8
                    ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                      Fluttertoast.showToast(msg: '我是可点击的');
                  }
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 30,
                      height: 30,
                      child: Image.asset('assets/images/avatar_rogemon.png')
                  )
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}
