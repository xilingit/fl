import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      title: ' Welcome tohich',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Welcome  - Gowhich'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: 'Open g cart',
              onPressed: () {
                print('Shopping cart opened.');
              },
            )
          ],
        ),
        body: Row(children: <Widget>[
          Expanded(child: Text('主体内容1'), flex: 2,),
          Expanded(child: Text('主体内容2'), flex: 1,)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween),
        floatingActionButton: FloatingActionButton(
          tooltip: "hello world",
          onPressed: () {},
          child: Icon(Icons.add),
    ),
        drawer: Drawer(),
      ),
    );
  }
}