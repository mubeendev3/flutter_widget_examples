import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);
  //Use GridView.count() when you know the number of childrens
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practicing GridView"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.cyan,
          ),
        ],
      ),
    );
  }

}
