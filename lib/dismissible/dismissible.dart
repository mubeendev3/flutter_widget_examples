import 'package:flutter/material.dart';

class CustomDismissible extends StatefulWidget {
  const CustomDismissible({super.key});

  @override
  State<CustomDismissible> createState() => _CustomDismissibleState();
}

class _CustomDismissibleState extends State<CustomDismissible> {
  List<String> fruits = [
    "Mango",
    "Orange",
    "Banana",
    "Grapes",
    "Watermelon",
    "Guava",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                print("Start To End Triggered");
              } else {
                print("End to Start Triggered");
              }
            },
            background: Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            secondaryBackground: Container(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              alignment: Alignment.centerRight,
              color: Colors.green,
              child: const Icon(
                Icons.archive,
                color: Colors.white,
              ),
            ),
            key: Key(fruit),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              child: Text(
                fruits[index],
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
