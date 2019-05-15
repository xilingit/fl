import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}
