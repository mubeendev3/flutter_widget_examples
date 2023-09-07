import 'package:flutter/material.dart';
import 'list_view/list_view_custom.dart';
import 'list_view/list_view_separated.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewCustom(),
    );
  }
}
