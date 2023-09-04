import 'package:flutter/material.dart';
import 'fractionally_sized_box/fractionally_sized_box.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomFractionallySizedBox(),
    );
  }
}
