
import 'package:flutter/material.dart';
import 'package:flutter_cases/theme/theme_config.dart';

class TabDemo extends StatefulWidget {
  @override
  _TabDemoState createState() => _TabDemoState();
}

class _TabDemoState extends State<TabDemo> {

  final List<Tab> _tabs = [
    Tab(text: 'One', icon: Icon(Icons.looks_one_outlined)),
    Tab(text: 'Two', icon: Icon(Icons.looks_two_outlined)),
    Tab(text: 'Three', icon: Icon(Icons.thumb_up_off_alt)),
    Tab(text: 'Four', icon: Icon(Icons.face_unlock_rounded)),
    Tab(text: 'Five', icon: Icon(Icons.schedule)),
    Tab(text: 'Six', icon: Icon(Icons.shopping_cart)),
    Tab(text: 'Seven', icon: Icon(Icons.directions_train_outlined)),
    Tab(text: 'Eight', icon: Icon(Icons.send)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: DefaultTabController(
        length: 8,
        child: Column(
          children: [
            Material(
              color: ThemeConfigs.primaryColor,
              child: TabBar(
                tabs: _tabs,
                isScrollable: true,
                unselectedLabelColor: Colors.white54,
                labelColor: Colors.white,
              ),
            ),
            Expanded(
                child: TabBarView(children: List.generate(_tabs.length, (index) => _tabs[index].icon))
            )
          ],
        ),
      ),
    );
  }
}

