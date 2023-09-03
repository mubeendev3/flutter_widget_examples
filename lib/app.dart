import 'package:flutter/material.dart';

import 'expanded/expanded.dart';
import 'flexible/flexible.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomFlexible(),
    );
  }
}
