import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/demo/topic/state/count_model.dart';
import 'package:scoped_model/scoped_model.dart';
/// 通过 scoped model 实现状态管理
class ScopedModelDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    CountModel countModel = CountModel();

    return ScopedModel<CountModel>(
      model: countModel,
      child: Scaffold(
        body: Center(
          child: ScopedModelDescendant<CountModel>(
            builder: (context, child, model) {
              return Text(
                  '当前计数：${model.count}',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.redAccent
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
