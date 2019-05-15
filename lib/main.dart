import 'package:flutter/material.dart';
import 'package:flutter_myapp/bottom_navigate.dart';
import 'package:flutter_myapp/myfab.dart';
import 'model/post.dart';
import './drawer.dart';
import './bottom_navigate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        title: ' Welcome to my first flutter demo',
        home: Home());
  }
}

//首页
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome  - Gowhich'),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            tooltip: 'Open a cart',
            onPressed: () {
              print('Shopping cart opened.');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
      floatingActionButton: MyFab(),
      drawer: MyDrawer(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
