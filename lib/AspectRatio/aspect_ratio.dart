import 'package:flutter/material.dart';

class CustomAspectRatio extends StatelessWidget {
  const CustomAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
