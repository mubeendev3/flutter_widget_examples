import 'package:flutter/material.dart';

class CustomFlexible extends StatelessWidget {
  const CustomFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
