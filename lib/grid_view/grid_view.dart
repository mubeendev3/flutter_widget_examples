import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  //Use GridView.count() when you know the number of children
  //Use GridView.builder() constructor when you have a large or dynamic list of items that you want to display in a grid.
  //Use GridView.extent() constructor when you want a grid with a fixed extent (size) for each item and don't necessarily know the exact number of items.
  //Use GridView.custom() constructor when you need complete control over the grid layout and scrolling behavior.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practicing GridView"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => _buildGridViewItem(index),
      ),
      // GridView.extent(
      //   padding: const EdgeInsets.all(8),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   maxCrossAxisExtent: 100,
      //   children: [
      //     _buildGridViewItem(0),
      //     _buildGridViewItem(1),
      //     _buildGridViewItem(2),
      //     _buildGridViewItem(3),
      //     _buildGridViewItem(4),
      //   ],
      // ),
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
    Colors.deepOrange,
    Colors.amberAccent,
    Colors.deepPurple,
    Colors.lime,
    Colors.teal,
  ];
}
