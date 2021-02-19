// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_cases/resource/strings.dart';
// BEGIN appbarDemo

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          Strings.appbar,
        ),
        actions: [
          IconButton(
            tooltip: 'Favorite',
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'First choice',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Second choice',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Third choice',
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          Strings.contentHolderText,
        ),
      ),
    );
  }
}

// END
