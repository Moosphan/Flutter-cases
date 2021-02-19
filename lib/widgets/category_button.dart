
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/theme/styles.dart';
import 'package:flutter_cases/theme/theme_config.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback callback;

  CategoryButton({this.text, this.icon, this.callback});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                // default icon
                icon ?? Icons.error_outline,
                size: 46,
                color: ThemeConfigs.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: Styles.categoryTitleTheme,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        onTap: callback,
        splashColor: ThemeConfigs.disabledColor,
        highlightColor: Colors.transparent,
        borderRadius: BorderRadius.circular(36.0),
        radius: 320.0,
      ),
    );
  }
}
