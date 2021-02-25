import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/pages/demo_page.dart';
import 'package:flutter_cases/pages/me_page.dart';
import 'package:flutter_cases/pages/widget_page.dart';

class NewHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewHomePageState();
  }
}

class _NewHomePageState extends State {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.pie_chart_outline_outlined),
      label: "组件",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.poll_outlined),
      label: "实战",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person_pin_outlined),
      label: "我的",
    ),
  ];

  int currentIndex;

  final pages = [WidgetPage(), DemoPage(), MePage()];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Cases"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项 切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
