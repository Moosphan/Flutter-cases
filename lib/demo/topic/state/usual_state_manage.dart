import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import '../../../utils/screen_utils.dart';
/// 通过 setState 方式更新状态
class UsualStateManageDemoPage extends StatefulWidget {
  @override
  _UsualStateManageDemoPageState createState() => _UsualStateManageDemoPageState();
}

class _UsualStateManageDemoPageState extends State<UsualStateManageDemoPage> with WidgetsBindingObserver {

  DateTime time = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 监听应用生命周期
    super.didChangeAppLifecycleState(state);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child:  Column(
            children: [
              SizedBox(
                width: 160,
                child: RaisedButton(
                  onPressed: _showPicker,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  ),
                  color: Colors.orange,
                  splashColor: Colors.redAccent,
                  disabledColor: Colors.orange.shade200,
                  child: Text('选择时间'),
                ),
              ),
              ScreenUtils.verticalMargin(20),
              Text('当前时间：${DateFormat.jm().format(time)}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)
            ],
          ),
        ),
      ),
    );
  }
  
  void _showPicker() {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => CupertinoDatePicker(
        backgroundColor:
        CupertinoColors.systemBackground.resolveFrom(context),
        mode: CupertinoDatePickerMode.time,
        initialDateTime: time,
        onDateTimeChanged: (newDateTime) {
          setState(() => time = newDateTime);
        },
      ),
    );
  }
}
