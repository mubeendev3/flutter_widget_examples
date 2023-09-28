import 'package:flutter/material.dart';

class CustomGestureDetector extends StatefulWidget {
  const CustomGestureDetector({super.key});

  @override
  State<CustomGestureDetector> createState() => _CustomGestureDetectorState();
}

class _CustomGestureDetectorState extends State<CustomGestureDetector> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Detector"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _number += 1;
              print(_number);
            });
          },
          child: Container(
            color: Colors.red,
            height: 150,
            width: 150,
            child: Center(
              child: Text(
                "$_number",
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
