import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cases/utils/screen_utils.dart';

class PlaceHolderDemo extends StatelessWidget {

  final List<BookEntry> books = <BookEntry> [
    BookEntry('中华上下五千年'),
    BookEntry('海底两万里'),
    BookEntry('钢铁怎样练成的'),
    BookEntry('西游记'),
    BookEntry('三国演义'),
    BookEntry('红楼梦'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 300,
              padding: const EdgeInsets.all(12),
              color: Colors.amber,
              child: Placeholder(),
            ),
            ScreenUtils.verticalMargin(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  child: Placeholder(),
                  color: Colors.purple,
                ),
                Container(
                  width: 120,
                  height: 100,
                  child: Placeholder(),
                  color: Colors.blueAccent,
                ),
                Container(
                  width: 120,
                  height: 100,
                  child: Placeholder(),
                  color: Colors.lightGreenAccent,
                ),
              ],
            ),
            ScreenUtils.verticalMargin(20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10.0),
              itemCount: books.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 220,
                        child: Placeholder(),
                        color: Colors.grey,
                      ),
                      Container(
                        height: 60,
                        child: Center(
                          child: Text(books[index].name),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class BookEntry {
  String name;
  String category;
  double price;
  int count;

  BookEntry(this.name);
}
