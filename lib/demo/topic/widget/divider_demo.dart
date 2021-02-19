
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/theme/theme_config.dart';
/// Divider sample
/// @Date 2021/02/17
class DividerDemo extends StatelessWidget {

  final List<ColorEntry> colors = <ColorEntry> [
    ColorEntry(100, 'purple'),
    ColorEntry(200, 'purple'),
    ColorEntry(300, 'purple'),
    ColorEntry(400, 'purple'),
    ColorEntry(500, 'purple'),
    ColorEntry(600, 'purple'),
    ColorEntry(700, 'purple'),
    ColorEntry(800, 'purple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Container(
                  height: 60,
                  color: Colors.purple[colors[index].colorLayer],
                  child: Center(
                    child: Text('Color is ${colors[index].colorName} ${colors[index].colorLayer}'),
                  ),
                ),
                Divider(
                  color: ThemeConfigs.dividerColor,
                  // 盒子空间
                  height: 20,
                  // 分割线的绘制高度
                  thickness: 2,
                  // 前置留白
                  indent: 12,
                  // 后置留白
                  endIndent: 12,
                )
              ],
            ),
          );
          },
      ),
    );
  }
}

class ColorEntry {
  int colorLayer;
  String colorName;

  ColorEntry(this.colorLayer, this.colorName);
}
