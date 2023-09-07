import 'dart:math';
import 'package:flutter/material.dart';

class CustomScrollController extends StatefulWidget {
  CustomScrollController({Key? key}) : super(key: key);

  @override
  State<CustomScrollController> createState() => _CustomScrollControllerState();
}

class _CustomScrollControllerState extends State<CustomScrollController> {
  final ScrollController _scrollController = ScrollController();
  String _scrollLocation = "Reached Start";
  late Color _randomColor;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(listenToScrollMovements);
    _randomColor = _generateRandomColor();
  }

  //this method is used to keep track of the scrolling location
  void listenToScrollMovements() {
    String currentLocation = "";
    if (_scrollController.offset ==
        _scrollController.position.minScrollExtent) {
      currentLocation = "Reached At Start";
    } else if (_scrollController.offset ==
        _scrollController.position.maxScrollExtent) {
      currentLocation = "Reached At End";
    } else {
      currentLocation = "In Between List";
    }
    setState(() {
      _scrollLocation = currentLocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Here we adding listener with out controller
    // _scrollController.addListener(() {
    //   print(_scrollController.position.pixels);
    // });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_scrollLocation),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 50,
        itemBuilder: (context, index) {
          return _buildListItem(index + 1);
        },
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         // here we are using jumpTo method which directly jump to start or at end without animation
      //         // _scrollController
      //         //     .jumpTo(_scrollController.position.minScrollExtent);
      //
      //         // here we are using animateTo method which directly jump to start or at end with animation
      //         // _scrollController.animateTo(
      //         //   _scrollController.position.minScrollExtent,
      //         //   duration: const Duration(seconds: 2),
      //         //   curve: Curves.easeIn,
      //
      //         //now we are animating through item by item with animation
      //         _scrollController.animateTo(
      //           _scrollController.offset - 150,
      //           duration: const Duration(milliseconds: 1000),
      //           curve: Curves.easeIn,
      //         );
      //       },
      //       child: const Icon(Icons.arrow_upward),
      //     ),
      //     FloatingActionButton(
      //       onPressed: () {
      //         // _scrollController
      //         //     .jumpTo(_scrollController.position.maxScrollExtent);
      //
      //         // _scrollController.animateTo(
      //         //   _scrollController.position.maxScrollExtent,
      //         //   duration: const Duration(seconds: 2),
      //         //   curve: Curves.easeInOut,
      //         // );
      //
      //         _scrollController.animateTo(
      //           _scrollController.offset + 150,
      //           duration: const Duration(milliseconds: 1000),
      //           curve: Curves.easeInOut,
      //         );
      //       },
      //       child: const Icon(Icons.arrow_downward),
      //     ),
      //   ],
      // ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
      height: 150,
      color: _randomColor,
      child: Center(
        child: Text(
          "Item $index",
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Color _generateRandomColor() {
    final Random random = Random();
    final int red = random.nextInt(256);
    final int green = random.nextInt(256);
    final int blue = random.nextInt(256);

    return Color.fromARGB(255, red, green, blue);
  }
}
