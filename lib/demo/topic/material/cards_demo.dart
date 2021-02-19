
import 'package:flutter/material.dart';
import 'package:flutter_cases/utils/screen_utils.dart';

class CardsDemo extends StatefulWidget {
  @override
  _CardsDemoState createState() => _CardsDemoState();
}

class _CardsDemoState extends State<CardsDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ScreenUtils.verticalMargin(20),
          Card(
            clipBehavior: Clip.antiAlias, // 根据设置裁剪内容
            shadowColor: Colors.deepOrange,
            color: Colors.amber, //  卡片背景颜色
            elevation: 20.0, // 卡片的z坐标,控制卡片下面的阴影大小
            margin: EdgeInsets.all(30.0),
            //  margin: EdgeInsetsDirectional.only(bottom: 30.0, top: 30.0, start: 30.0),// 边距
            semanticContainer:
            true, // 表示单个语义容器，还是false表示单个语义节点的集合，接受单个child，但该child可以是Row，Column或其他包含子级列表的widget
//      shape: Border.all(
//          color: Colors.indigo, width: 1.0, style: BorderStyle.solid), // 卡片材质的形状，以及边框
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), // 圆角
            //borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Column(
              //card里面的子控件
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.addchart, color: Colors.indigo, size: 48),
                  title: Text('The Enchanted Nightingale',
                      style: TextStyle(color: Colors.white, fontSize: 40.0)),
                  subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',
                      style: TextStyle(color: Colors.yellow, fontSize: 16.0)),
                  contentPadding: EdgeInsets.all(20.0), // item 内容内边距
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS',
                          style: TextStyle(color: Colors.black, fontSize: 14.0)),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('LISTEN',
                          style: TextStyle(color: Colors.black, fontSize: 14.0)),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

