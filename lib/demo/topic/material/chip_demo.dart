
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cases/utils/screen_utils.dart';
import 'package:flutter_cases/widgets/section_label.dart';
import 'package:fluttertoast/fluttertoast.dart';
/// Chip sample.
/// Includes: [Chip], [ChoiceChip], [ActionChip], [InputChip], [FilterChip]
class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  final List<ChoiceEntry> choiceList = [
    ChoiceEntry('Java'),
    ChoiceEntry('PHP'),
    ChoiceEntry('C++'),
    ChoiceEntry('Python'),
    ChoiceEntry('Kotlin'),
  ];

  int _currentChoiceIndex = 0;
  List<ChoiceEntry> _filters = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionLabel('1. Chip'),
          ScreenUtils.verticalMargin(16),
          Chip(
            label: Text('Android studio'),
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
            avatar: SizedBox(
              width: 30,
              height: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar_rogemon.png'),
                radius: 20,
              ),
            ),
            backgroundColor: Colors.lightGreenAccent,
            clipBehavior: Clip.antiAlias,
            labelPadding: const EdgeInsets.all(6.0),
            deleteIcon: Icon(Icons.clear),
            onDeleted: () {
              Fluttertoast.showToast(msg: 'deleted.');
            },
            deleteIconColor: Colors.indigo,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            padding: const EdgeInsets.all(6),
          ),
          ScreenUtils.verticalMargin(16),
          SectionLabel('2. ChoiceChip'),
          ScreenUtils.verticalMargin(16),
          Wrap(
            children: _generateChoiceGroup(),
          ),
          SectionLabel('3. FilterChip'),
          ScreenUtils.verticalMargin(16),
          Wrap(
            children: _generateFilterChipGroup(),
          ),
          SectionLabel('4. InputChip'),
          ScreenUtils.verticalMargin(16),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InputChip(
              label: Text('Today is a good day.'),
              labelStyle: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),
              avatar: Icon(Icons.brightness_7_rounded),
              labelPadding: const EdgeInsets.all(6.0),
              onDeleted: () {
                Fluttertoast.showToast(msg: 'deleted.');
              },
              materialTapTargetSize: MaterialTapTargetSize.padded,
              padding: const EdgeInsets.all(6),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(28)
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _generateChoiceGroup() {
    return List.generate(choiceList.length, (index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
            label: Text(choiceList[index].name),
            backgroundColor: _randomColor(),
            labelPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            selected: _currentChoiceIndex == index,
            onSelected: (selected) {
              setState(() {
                if (selected) {
                  _currentChoiceIndex = index;
                }
              });
            },
          ),
        )
    );
  }

  List<Widget> _generateFilterChipGroup() {
    return List.generate(choiceList.length, (index) =>
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilterChip(
            label: Text(choiceList[index].name),
            backgroundColor: _randomColor(),
            labelPadding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
            selected: _filters.contains(choiceList[index]),
            onSelected: (selected) {
              setState(() {
                if (selected) {
                  _filters.add(choiceList[index]);
                } else {
                  _filters.remove(choiceList[index]);
                }
              });
            },
          ),
        )
    );
  }

  Color _randomColor() {
    var red = Random.secure().nextInt(255);
    var greed = Random.secure().nextInt(255);
    var blue = Random.secure().nextInt(255);
    return Color.fromARGB(255, red, greed, blue);
  }
}

class ChoiceEntry {
  final String name;

  ChoiceEntry(this.name);

}

