import 'package:flutter/material.dart';

class CustomDragWidget extends StatefulWidget {
  const CustomDragWidget({super.key});

  @override
  State<CustomDragWidget> createState() => _CustomDragWidgetState();
}

class _CustomDragWidgetState extends State<CustomDragWidget> {
  final int _number = 5;
  late int _sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Draggable & Drag Target"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDraggable(),
                const SizedBox(
                  height: 350,
                ),
                Container(
                  color: Colors.black,
                  height: 200,
                  width: double.infinity,
                  child: Center(
                    child: _buildDragTarget(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  DragTarget<int> _buildDragTarget() {
    return DragTarget(
      builder: (context, acceptedData, rejectedData) {
        if (acceptedData.isEmpty) {
          return Text(
            "$_sum",
            style: const TextStyle(fontSize: 50.0, color: Colors.red),
          );
        } else {
          _sum += acceptedData[0]!.toInt();
          return Text(
            "$_sum",
            style: const TextStyle(fontSize: 50.0, color: Colors.red),
          );
        }
      },
    );
  }

  Draggable<int> _buildDraggable() {
    return Draggable(
      data: _number,
      childWhenDragging: Text(
        "$_number",
        style: const TextStyle(fontSize: 70.0, color: Colors.black),
      ),
      feedback: Material(
        child: Text(
          "$_number",
          style: const TextStyle(fontSize: 50.0, color: Colors.red),
        ),
      ),
      child: Text(
        "$_number",
        style: const TextStyle(fontSize: 70.0, color: Colors.black),
      ),
    );
  }
}
