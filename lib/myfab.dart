import 'package:flutter/material.dart';

class MyFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        tooltip: "hello world", onPressed: () {}, child: Icon(Icons.add));
  }
}
