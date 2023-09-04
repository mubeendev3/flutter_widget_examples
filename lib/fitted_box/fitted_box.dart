import 'package:flutter/material.dart';

class CustomFittedBox extends StatelessWidget {
  const CustomFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Here you can see without FittedBox we are getting error of pixel overflowed
      // body: Center(
      //   child: Container(
      //     color: Colors.deepPurple,
      //     width: 200,
      //     height: 150,
      //     child: const Text(
      //       "My Name Is Mubeen",
      //       style: TextStyle(
      //         fontSize: 50,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      // ),
      //Now lets try by using FittedBox widget
      body: Center(
        child: Container(
          color: Colors.deepPurple,
          width: 200,
          height: 150,
          child: const FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "My Name Is Mubeen",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
