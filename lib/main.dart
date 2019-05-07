import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' Welcome tohich',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome  - Gowhich'),
        ),
        body: Text("data"),
      ),
    );
  }
}