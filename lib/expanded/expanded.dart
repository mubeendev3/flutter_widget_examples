import 'package:flutter/material.dart';

class CustomExpanded extends StatelessWidget {
  const CustomExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
