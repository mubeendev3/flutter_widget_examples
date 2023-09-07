import 'package:flutter/material.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListViewBuilder"),
      ),

      //Use this ListView.builder when you have a dynamic or large list of items.
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        // reverse: true,
        // prototypeItem: ConstrainedBox(
        //   constraints: const BoxConstraints(
        //     minWidth: 200,
        //     minHeight: 100,
        //     maxHeight: 200,
        //     maxWidth: 200,
        //   ),
        // ),
        // padding: const EdgeInsets.all(8),
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

        itemCount: 30,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
            height: 100,
            // width: 100,
            child: Center(
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
