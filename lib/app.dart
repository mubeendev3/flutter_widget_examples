import 'package:flutter/material.dart';

import 'AspectRatio/aspect_ratio.dart';
import 'constrained_box/constrained_box.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomConstrainedBox(),
    );
  }
}
