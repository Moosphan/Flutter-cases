// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
// BEGIN cupertinoAlertDemo

enum AlertDemoType {
  alert,
  alertTitle,
  alertButtons,
  alertButtonsOnly,
  actionSheet,
}

class CupertinoAlertDemo extends StatefulWidget {

  @override
  _CupertinoAlertDemoState createState() => _CupertinoAlertDemoState();
}

class _CupertinoAlertDemoState extends State<CupertinoAlertDemo> {
  String lastSelectedValue;

  void _showDemoDialog({BuildContext context, Widget child}) {
    showCupertinoDialog<String>(
      context: context,
      builder: (context) => child,
    ).then((value) {
      if (value != null) {
        setState(() {
          lastSelectedValue = value;
        });
      }
    });
  }

  void _showDemoActionSheet({BuildContext context, Widget child}) {
    showCupertinoModalPopup<String>(
      context: context,
      builder: (context) => child,
    ).then((value) {
      if (value != null) {
        setState(() {
          lastSelectedValue = value;
        });
      }
    });
  }

  void _onAlertPress(BuildContext context) {
    _showDemoDialog(
      context: context,
      child: CupertinoAlertDialog(
        title: Text('是否删除草稿？'),
        actions: [
          CupertinoDialogAction(
            child: Text(
              '删除',
            ),
            isDestructiveAction: true,
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
          CupertinoDialogAction(
            child: Text(
              '取消',
            ),
            isDefaultAction: true,
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
        ],
      ),
    );
  }

  void _onAlertWithTitlePress(BuildContext context) {
    _showDemoDialog(
      context: context,
      child: CupertinoAlertDialog(
        title: Text(
          '申请定位权限',
        ),
        content: Text(
          '我们希望能够向你申请应用的位置权限，以便为您提供更好地服务。',
        ),
        actions: [
          CupertinoDialogAction(
            child: Text(
              '拒绝',
            ),
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
          CupertinoDialogAction(
            child: Text(
              '允许',
            ),
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
        ],
      ),
    );
  }

  void _onAlertWithButtonsPress(BuildContext context) {
    _showDemoDialog(
      context: context,
      child: CupertinoDessertDialog(
        title: Text(
          '一个普通的标题',
        ),
        content: Text(
          '平凡不过的内容',
        ),
      ),
    );
  }

  void _onAlertButtonsOnlyPress(BuildContext context) {
    _showDemoDialog(
      context: context,
      child: const CupertinoDessertDialog(),
    );
  }

  void _onActionSheetPress(BuildContext context) {
    _showDemoActionSheet(
      context: context,
      child: CupertinoActionSheet(
        title: Text(
          '请选择你最喜欢的美食',
        ),
        message: Text(
          '请发自内心选出你最珍爱的美食吧',
        ),
        actions: [
          CupertinoActionSheetAction(
            child: Text(
              '蛋糕',
            ),
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
          CupertinoActionSheetAction(
            child: Text(
              '苹果',
            ),
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
          CupertinoActionSheetAction(
            child: Text(
              '菠萝包',
            ),
            onPressed: () => Navigator.of(context, rootNavigator: true).pop(
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text(
            '取消',
          ),
          isDefaultAction: true,
          onPressed: () => Navigator.of(context, rootNavigator: true).pop(
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Builder(
        builder: (context) {
          return Center(
            child: Column(
              children: [
                ScreenUtils.verticalMargin(22),
                CupertinoButton.filled(
                    child: Text('普通弹窗'),
                    onPressed: () {
                      _onAlertPress(context);
                    }
                ),
                ScreenUtils.verticalMargin(12),
                CupertinoButton.filled(
                    child: Text('带标题弹窗'),
                    onPressed: () {
                      _onAlertWithTitlePress(context);
                    }
                ),
                ScreenUtils.verticalMargin(12),
                CupertinoButton.filled(
                    child: Text('带按钮风格弹窗'),
                    onPressed: () {
                      _onAlertWithButtonsPress(context);
                    }
                ),
                ScreenUtils.verticalMargin(12),
                CupertinoButton.filled(
                    child: Text('按钮弹窗弹窗'),
                    onPressed: () {
                      _onAlertButtonsOnlyPress(context);
                    }
                ),
                ScreenUtils.verticalMargin(12),
                CupertinoButton.filled(
                    child: Text('底部弹窗'),
                    onPressed: () {
                      _onActionSheetPress(context);
                    }
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CupertinoDessertDialog extends StatelessWidget {
  const CupertinoDessertDialog({Key key, this.title, this.content})
      : super(key: key);

  final Widget title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: title,
      content: content,
      actions: [
        CupertinoDialogAction(
          child: Text(
            '蛋糕',
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(
            );
          },
        ),
        CupertinoDialogAction(
          child: Text(
            '水果',
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(
            );
          },
        ),
        CupertinoDialogAction(
          child: Text(
            '菠萝包',
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(
            );
          },
        ),
        CupertinoDialogAction(
          child: Text(
            '取消',
          ),
          isDestructiveAction: true,
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(
            );
          },
        ),
      ],
    );
  }
}

// END
