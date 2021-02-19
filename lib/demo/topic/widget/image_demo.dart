import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:image_picker/image_picker.dart';
/// Sample of [Image] usage.
/// @date 2021/02/17
class ImageDemo extends StatefulWidget {
  @override
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  File _image;
  Uint8List _uint8list;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ScreenUtils.verticalMargin(16),
          Image.asset('assets/images/avatar_rogemon.png',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
          ScreenUtils.verticalMargin(16),
          Image.network('https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
          ScreenUtils.verticalMargin(16),
          // 本地文件加载
          Offstage(
            offstage: _image == null,
            child: Column(
              children: [
                if (_image != null) SizedBox(
                  height: 120,
                    child: Image.file(_image)
                ),
                ScreenUtils.verticalMargin(16),
              ],
            ),
          ),
          // 加载内存图片(Uint8List)
          Offstage(
            offstage: _uint8list == null,
            child: Column(
              children: [
                if (_uint8list != null) SizedBox(
                    height: 120,
                    child: Image.memory(_uint8list)
                ),
                ScreenUtils.verticalMargin(16),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              getImage();
            },
            color: Colors.amber,
            shape: Border.all(
              color: Colors.deepPurple,
              width: 2.0,
              style: BorderStyle.solid
            ),
            child: Text('加载本地图片文件'),
          ),
          ScreenUtils.verticalMargin(10),
          FlatButton(
            onPressed: () {
              getImage();
            },
            color: Colors.amber,
            shape: Border.all(
                color: Colors.deepPurple,
                width: 2.0,
                style: BorderStyle.solid
            ),
            child: Text('从内存加载图片资源'),
          )
        ],
      ),
    );
  }

  Future getImage() async {
    final selectedImage = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      if (selectedImage != null) {
        _image = File(selectedImage.path);
      } else {
        print('no image selected.');
      }
    });
  }
}
