// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_cases/resource/strings.dart';

// BEGIN bottomAppBarDemo

class BottomAppBarDemo extends StatefulWidget {
  const BottomAppBarDemo();

  @override
  State createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo>
    with RestorationMixin {
  final RestorableBool _showFab = RestorableBool(true);
  final RestorableBool _showNotch = RestorableBool(true);
  final RestorableInt _currentFabLocation = RestorableInt(0);

  @override
  String get restorationId => 'bottom_app_bar_demo';

  @override
  void restoreState(RestorationBucket oldBucket, bool initialRestore) {
    registerForRestoration(_showFab, 'show_fab');
    registerForRestoration(_showNotch, 'show_notch');
    registerForRestoration(_currentFabLocation, 'fab_location');
  }

  @override
  void dispose() {
    _showFab.dispose();
    _showNotch.dispose();
    _currentFabLocation.dispose();
    super.dispose();
  }

  // Since FloatingActionButtonLocation is not an enum, the index of the
  // selected FloatingActionButtonLocation is used for state restoration.
  static const List<FloatingActionButtonLocation> _fabLocations = [
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.centerFloat,
  ];

  void _onShowNotchChanged(bool value) {
    setState(() {
      _showNotch.value = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab.value = value;
    });
  }

  void _onFabLocationChanged(int value) {
    setState(() {
      _currentFabLocation.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(bottom: 88),
        children: [
          SwitchListTile(
            title: Text(
              Strings.fab,
            ),
            value: _showFab.value,
            onChanged: _onShowFabChanged,
          ),
          SwitchListTile(
            title: Text('凹口'),
            value: _showNotch.value,
            onChanged: _onShowNotchChanged,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('悬浮按钮位置'),
          ),
          RadioListTile<int>(
            title: Text(
              '停靠在末端',
            ),
            value: 0,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              '停靠居中',
            ),
            value: 1,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              '悬浮在末尾',
            ),
            value: 2,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
          RadioListTile<int>(
            title: Text(
              '悬浮居中',
            ),
            value: 3,
            groupValue: _currentFabLocation.value,
            onChanged: _onFabLocationChanged,
          ),
        ],
      ),
      floatingActionButton: _showFab.value
          ? FloatingActionButton(
              onPressed: () {
                print('Floating action button pressed');
              },
              child: const Icon(Icons.add),
            )
          : null,
      floatingActionButtonLocation: _fabLocations[_currentFabLocation.value],
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: _fabLocations[_currentFabLocation.value],
        shape: _showNotch.value ? const CircularNotchedRectangle() : null,
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation,
    this.shape,
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;

  static final centerLocations = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: [
            IconButton(
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(Icons.menu),
              onPressed: () {
                print('Menu button pressed');
              },
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Search button pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                print('Favorite button pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// END
