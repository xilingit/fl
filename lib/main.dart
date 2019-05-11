import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: ' Welcome tohich',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Welcome  - Gowhich'),
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: 'Open a cart',
              onPressed: () {
                printIt('Shopping cart opened.');
                getHttp();
              },
            ),
          ],
        ),
        body: Row(children: <Widget>[
          Expanded(child: Text('主体内容1'), flex: 2,),
          Expanded(child: Text('主体2'), flex: 1,)
        ],),
        floatingActionButton: FloatingActionButton(
          tooltip: "hello world",
          onPressed: () {},
          child: Icon(Icons.add),
    ),
        drawer: Drawer(),
      ),
    );
  }

  void printIt(String s) {
    print("this is $s");
  }

  void getHttp() async {
    try {
        Response response = await Dio().get("http://www.baidu.com");
        print(response.headers);
      } catch (e) {
        print(e);
      }
  }
}