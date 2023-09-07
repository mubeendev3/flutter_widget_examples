import 'package:flutter/material.dart';

class CustomListViewSeparated extends StatelessWidget {
  const CustomListViewSeparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ListViewBuilder"),
      ),

      //Use this ListView.separated when you need separators between list items.
      body: ListView.separated(
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
            color: Colors.green,
            height: 100,
            // width: 100,
            child: Center(
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 1,
            color: Colors.white10,
            thickness: 1,
          );
        },
      ),
    );
  }
}
