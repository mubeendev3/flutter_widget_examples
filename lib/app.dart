import 'package:flutter/material.dart';
import 'fitted_box/fitted_box.dart';
import 'flexible/flexible.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomFittedBox(),
    );
  }
}
