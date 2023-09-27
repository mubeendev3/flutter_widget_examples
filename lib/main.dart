import 'package:flutter/material.dart';
import 'absorb_pointer/absorb_pointer.dart';
import 'grid_view/grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomAbsorbPointer(),
    );
  }
}
