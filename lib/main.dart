import 'package:flutter/material.dart';
import 'draggable_and_dragTarget/draggable_and_dragtarget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomDragWidget(),
    );
  }
}
