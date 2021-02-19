
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/section_label.dart';
/// Progress bar demo usage.
/// @date 2021/02/17
class ProgressBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          ScreenUtils.verticalMargin(20),
          CircularProgressIndicator(
          ),
          ScreenUtils.verticalMargin(36),
          CircularProgressIndicator(
            backgroundColor: Colors.redAccent,
          ),
          ScreenUtils.verticalMargin(36),
          SizedBox(
            width: 48,
              height: 48,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
              ),
          ),
          ScreenUtils.verticalMargin(36),
          LinearProgressIndicator(
          ),
          ScreenUtils.verticalMargin(36),
          LinearProgressIndicator(
            backgroundColor: Colors.amber,
          ),
          ScreenUtils.verticalMargin(36),
          LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
          ),
        ],
      ),
    );
  }
}
