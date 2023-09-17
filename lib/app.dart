import 'package:flutter/material.dart';

import 'grid_view/grid_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomGridView(),
    );
  }
}
