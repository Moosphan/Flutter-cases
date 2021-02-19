import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// Sample of [Icon] usage.
class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ScreenUtils.verticalMargin(20),
          // 使用系统自带material或者cupertino风格的icon资源
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.ac_unit_sharp,
                size: 36,
                color: Colors.deepPurple,
              ),
              ScreenUtils.horizontalMargin(20),
              Icon(
                Icons.access_time_outlined,
                size: 36,
                color: Colors.orange,
              ),
              ScreenUtils.horizontalMargin(20),
              Icon(
                CupertinoIcons.alarm,
                size: 36,
                color: Colors.indigoAccent,
              ),
            ],
          ),
          ScreenUtils.verticalMargin(36),
          // 使用外部icon资源
          Icon(IconData(
            0xe91f,
            fontFamily: 'GalleryIcons',
            ),
            size: 48,
            color: Colors.red,
          ),
          ScreenUtils.verticalMargin(36),
          IconButton(
            // icon不限于Icon控件，此处为任何widget
            icon: Icon(Icons.fingerprint_outlined),
            iconSize: 64,
            color: Colors.deepPurple,
            onPressed: () {
              Fluttertoast.showToast(msg: 'clicked');
            },
            tooltip: '指纹识别',
            highlightColor: Colors.red.shade200,
            splashColor: Colors.deepPurple.shade500,
          )
        ],
      ),
    );
  }
}
