import 'dart:math';
import 'package:flutter/material.dart';

//Use ListView.custom when you need full customization and have unique scrolling requirements.

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom ListView"),
      ),

      // This list is equivalent to the simple ListView because they both inherited from SliverChildListDelegate()
      // body: ListView.custom(
      //   childrenDelegate: SliverChildListDelegate(
      //     [
      //       _buildListItem(1),
      //       _buildListItem(2),
      //       _buildListItem(3),
      //       _buildListItem(4),
      //       _buildListItem(5),
      //     ],
      //   ),
      // ),

      // This ListView.custom is equivalent to the simple ListView.builder because they both inherited from SliverChildBuilderDelegate()
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 30,
          (context, index) {
            return _buildListItem(index + 1);
          },
        ),
      ),
    );
  }
}

Widget _buildListItem(int index) {
  return Container(
    color: getRandomColor(),
    height: 100,
    child: Center(
      child: Text(
        "Item $index",
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );
}

Color getRandomColor() {
  final Random random = Random();
  return Color.fromRGBO(
    random.nextInt(256), // Red component
    random.nextInt(256), // Green component
    random.nextInt(256), // Blue component
    1.0, // Alpha (opacity)
  );
}
