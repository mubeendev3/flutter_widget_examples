import 'package:flutter/material.dart';
import 'package:flutter_widget_examples/scroll_controller/scroll_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollController(),
    );
  }
}
