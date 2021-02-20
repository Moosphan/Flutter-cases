import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
/// 通过 provider 来管理状态
class ProviderDemoPage extends StatefulWidget {
  @override
  _ProviderDemoPageState createState() => _ProviderDemoPageState();
}

class _ProviderDemoPageState extends State<ProviderDemoPage> {
  CountModelByProvider countModel = CountModelByProvider();

  @override
  void didChangeDependencies() {
    // final counter = Provider.of<CountModelByProvider>(context);
    // if (countModel != counter) {
    //   countModel = counter;
    // }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountModelByProvider>.value(
      value: countModel,
      child: Scaffold(
        body: Center(
          child: Consumer<CountModelByProvider>(
            builder: (context, counter, child) {
              return Text(
                '当前计数：${counter.count}',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: Colors.purple
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // 增加计数
            countModel.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}


class CountModelByProvider with ChangeNotifier {
  int _count = 0;
  get count => _count;

  void increment() {
    _count ++;
    // Then notify all the listeners.
    notifyListeners();
  }
}
