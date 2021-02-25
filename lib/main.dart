import 'package:flutter/material.dart';
import 'package:flutter_cases/pages/homepage.dart';
import 'package:flutter_cases/pages/new_home_page.dart';
import 'package:flutter_cases/router/router.dart';
import 'package:flutter_cases/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.globalTheme,
      onGenerateRoute: BoatRouter.generateRoute,
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewHomePage();
  }
}
