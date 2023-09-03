import 'package:flutter/material.dart';

class CustomConstrainedBox extends StatelessWidget {
  const CustomConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 50,
            maxHeight: 100,
            minWidth: 50,
            maxWidth: 100,
          ),
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
