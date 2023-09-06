import 'package:flutter/material.dart';

void askdjhasjd() {}

class CustomFractionallySizedBox extends StatelessWidget {
  const CustomFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // //First example for FractionallySizedBoxExample
      // body: Center(
      //   child: FractionallySizedBox(
      //     //Try changing these values to check the difference
      //     heightFactor: 0.05,
      //     widthFactor: 0.7,
      //     child: ElevatedButton(
      //       onPressed: () {},
      //       child: const Text("FractionallySizedBoxExample"),
      //     ),
      //   ),
      // ),
      body: Column(
        //Example 2: How to use FractionallySizedBox for the spacing between two widgets
        children: [
          Container(
            height: 200,
            color: Colors.green,
          ),
          //If you are using FractionallySizedBox in row or column it must be wrapped in a Flexible widget
          const Flexible(
            child: FractionallySizedBox(
              heightFactor: 1,
            ),
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
