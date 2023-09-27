import 'package:flutter/material.dart';

class CustomAbsorbPointer extends StatelessWidget {
  const CustomAbsorbPointer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 100,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: null,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AbsorbPointer(
              child: SizedBox(
                height: 200,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
