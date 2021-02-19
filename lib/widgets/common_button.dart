
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cases/theme/theme_config.dart';
/// Global common button.
class CommonButton extends StatelessWidget {

  final Widget child;
  final VoidCallback callback;

  CommonButton({this.child, this.callback});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: const EdgeInsets.all(0),
        color: ThemeConfigs.primaryColor,
        borderRadius: BorderRadius.circular(ThemeConfigs.buttonRadius),
        disabledColor: ThemeConfigs.disabledColor,
        pressedOpacity: 0.8,
        child: child,
        onPressed: callback
    );
  }
}
