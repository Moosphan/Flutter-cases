import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/theme/theme_config.dart';
/// A section label widget to divide areas.
/// @author moosphon
/// @date 2021/02/18
class SectionLabel extends StatelessWidget {

  const SectionLabel(this.label);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeConfigs.accentColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0)
        ),
        // border: Border.all(
        //   color: Colors.redAccent,
        //   width: 1
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          label,
          style: TextStyle(
            color: ThemeConfigs.titleColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'serif'
          ),
        ),
      ),
    );
  }
}
