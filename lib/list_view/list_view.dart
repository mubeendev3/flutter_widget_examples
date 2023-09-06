import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exploring ListView")),

      //Use this list when you have a small and fixed number of children.
      body: ListView(
        padding: const EdgeInsets.all(10),
        // primary: false,
        // addAutomaticKeepAlives: false,
        // addRepaintBoundaries: ,
        // itemExtent: 150,
        // physics: const RangeMaintainingScrollPhysics(),
        // reverse: true,
        // scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
