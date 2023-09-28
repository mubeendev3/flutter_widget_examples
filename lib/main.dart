import 'package:flutter/material.dart';
import 'package:flutter_widget_examples/single_child_scroll_view/single_child_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomSingleChildScrollView(),
    );
  }
}
