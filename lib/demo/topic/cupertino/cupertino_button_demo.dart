// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';

// BEGIN cupertinoButtonDemo

class CupertinoButtonDemo extends StatelessWidget {
  const CupertinoButtonDemo();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text(
                '普通按钮',
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              child: Text(
                '带背景色的按钮',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// END
