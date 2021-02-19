// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_cases/resource/strings.dart';

// BEGIN navDrawerDemo

// Press the Navigation Drawer button to the left of AppBar to show
// a simple Drawer with two items.
class NavDrawerDemo extends StatelessWidget {
  const NavDrawerDemo({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        'Pretty Flutter',
      ),
      accountEmail: Text(
        'pretty.flutter@sample.com',
      ),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text(
            'Hot films',
          ),
          leading: const Icon(Icons.local_fire_department),
          onTap: () {
            Navigator.pop(context); // close the drawer
          },
        ),
        ListTile(
          title: Text(
            'My favourite',
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context); // close the drawer
          },
        ),
        ListTile(
          title: Text(
            'Recommend information',
          ),
          leading: const Icon(Icons.receipt_long_outlined),
          onTap: () {
            Navigator.pop(context); // close the drawer
          },
        ),
        ListTile(
          title: Text(
            'Give a suggestion',
          ),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context); // close the drawer
          },
        ),
      ],
    );
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        title: Text(
          Strings.drawer,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: OutlineButton(
            onPressed: () {
              //Scaffold.of(context).openDrawer();
              _drawerKey.currentState.openDrawer();
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),
            textColor: Colors.black87,
            color: Colors.lightBlue,
            splashColor: Colors.indigo,
            child: Text('开启抽屉栏', style: TextStyle(
              fontSize: 18
            ),),
          ),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}

// END
