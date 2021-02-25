import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/router/routes.dart';
import 'package:flutter_cases/widgets/category_button.dart';

class WidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var categoryList = RoutesConfiguration.getAllRoutes();
    return Container(
      child: GridView.count(
        primary: false,
        crossAxisCount: 3,
        children: List<Widget>.generate(
            categoryList.length,
            (index) => CategoryButton(
                  text: categoryList[index].title,
                  icon: categoryList[index].icon,
                  callback: () {
                    final route =
                        '${RoutesConfiguration.demoBase}/${categoryList[index].path}';
                    Navigator.pushNamed(context, route);
                  },
                )),
      ),
    );
  }
}
