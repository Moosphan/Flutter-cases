
import 'package:flutter/material.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
/// [SnackBar] sample.
/// @date 2021/02/18
class SnackBarDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final snackBar = SnackBar(
      content: Container(
        child: Row(
          children: [
            Icon(Icons.date_range_outlined),
            ScreenUtils.horizontalMargin(10),
            Text('Today is a good day to travel.')
          ],
        ),
      ),
      action: SnackBarAction(
        label: 'Let\'s go!',
        onPressed: () {

        },
      ),
    );
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('显示 SnackBar'),
          onPressed: () {
            Scaffold.of(context).showSnackBar(snackBar);
          },
        ),
      ),
    );
  }
}

// END
