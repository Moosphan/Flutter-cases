
import 'package:flutter/widgets.dart';

class ScreenUtils {

  ScreenUtils._();

  static Widget verticalMargin(double margin) {
    return SizedBox(
      height: margin,
    );
  }

  static Widget horizontalMargin(double margin) {
    return SizedBox(
      width: margin,
    );
  }
}