
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/demo/base/demo_page.dart';
import 'package:flutter_cases/router/routes.dart';

import '../main.dart';

// The destination of boat traveling.
typedef DestinationBuilder = Widget Function(BuildContext, String);

class Boat {
  /// A RegEx string for boat traveling.
  final String path;
  /// The builder for the associated pattern route. The first argument is the
  /// [BuildContext] and the second argument a RegEx match if that destination path is included
  /// in the pattern.
  final DestinationBuilder builder;

  const Boat(this.path, this.builder);
}

class BoatRouter {

  /// Navigate to the target page when route is matched.
  static Route<dynamic> generateRoute(RouteSettings settings) {
    log('router get the route name: ${settings.name}');
    for (final boat in boats) {
      final regEx = RegExp(boat.path);
      if (regEx.hasMatch(settings.name)) {
        final firstMatch = regEx.firstMatch(settings.name);
        final path = firstMatch.groupCount == 1 ? firstMatch.group(1) : null;
        return MaterialPageRoute<void>(
          builder: (context) {
            return boat.builder(context, path);
          },
          settings: settings,
        );
      }
    }
    // no route matched, go to 404 page
    return null;
  }
  
  static List<Boat> boats = [
    Boat(
      r'^' + RoutesConfiguration.demoBase + r'/([\w-]+)$',
          (context, path) {
        log('go to demo page...');
        return DemoPage(path: path);
      },
    ),
    /// Note: the root page should be the last matched.
    Boat(
      r'^/',
          (context, match) => const RootPage(),
    ),
    /// demo pages
    /// TODO: sample apps
  ];

}