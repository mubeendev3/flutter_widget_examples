import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  //Use GridView.count() when you know the number of children
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practicing GridView"),
      ),
      body: GridView.extent(
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 100,
        children: [
          _buildGridViewItem(0),
          _buildGridViewItem(1),
          _buildGridViewItem(2),
          _buildGridViewItem(3),
          _buildGridViewItem(4),
        ],
      ),
      // body: GridView.count(
      //   padding: const EdgeInsets.all(8),
      //   keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   crossAxisCount: 2,
      //   children: [
      //     Container(
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.purple,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildGridViewItem(int index) {
    return Container(
      color: colors[index],
    );
  }

  static const List colors = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.blue,
  ];
}
