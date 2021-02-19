// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';


// BEGIN cupertinoSwitchDemo

class CupertinoSwitchDemo extends StatefulWidget {
  const CupertinoSwitchDemo();

  @override
  _CupertinoSwitchDemoState createState() => _CupertinoSwitchDemoState();
}

class _CupertinoSwitchDemoState extends State<CupertinoSwitchDemo>
    with RestorationMixin {
  final RestorableBool _switchValue = RestorableBool(false);

  @override
  String get restorationId => 'cupertino_switch_demo';

  @override
  void restoreState(RestorationBucket oldBucket, bool initialRestore) {
    registerForRestoration(_switchValue, 'switch_value');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Semantics(
          container: true,
          label: '通知开关',
          child: CupertinoSwitch(
            value: _switchValue.value,
            onChanged: (value) {
              setState(() {
                _switchValue.value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

// END
