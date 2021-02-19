
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_cases/router/routes.dart';
import 'package:flutter_cases/theme/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';
/// demo page container
/// @author moosphon
class DemoPage extends StatefulWidget {
  final String path;

  @override
  _DemoPageState createState() => _DemoPageState();

  DemoPage({
    Key key,
    @required this.path
  }) : super(key: key);
}

class _DemoPageState extends State<DemoPage> {
  Map<String, BoatRoute> pageRouteData;

  @override
  void initState() {
    /// only initialize one time
    log('the demo route is: ${widget.path}');
    pageRouteData = RoutesConfiguration().getRouteData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.path == null || !pageRouteData.containsKey(widget.path)) {
      Navigator.of(context).pop();
    }
    final appbar = AppBar(
      title: Text(pageRouteData[widget.path].title, style: Styles.appBarTitleTheme),
      leading: const BackButton(),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline_rounded),
          onPressed: () {
            // save into local
            Fluttertoast.showToast(msg: 'developing now, please wait..');
          },
        )
      ],
    );
    return Scaffold(
      appBar: appbar,
      body: DemoBody(route: pageRouteData[widget.path]),
    );
  }
}

class DemoBody extends StatelessWidget {
  final BoatRoute route;

  DemoBody({
    Key key,
    @required this.route
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Material(
            clipBehavior: Clip.antiAlias,
            child: Builder(builder: route.builder),
          ),
        )
    );
  }
}

