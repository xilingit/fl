import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("guanxilin"),
          accountEmail: Text("hello_world@gmail.com"),
          currentAccountPicture: Image.network(
              "https://cdn.jsdelivr.net/gh/flutterchina/flutter-in-action@1.0/docs/imgs/flutter_starter_app.png"),
        ),
        ListTile(
          title: Text("message"),
          trailing: Icon(Icons.message),
          onTap: _taped,
          onLongPress: _longPressed,
        )
      ],
    ));
  }

  void _taped() {
    print("taped");
  }

  void _longPressed() {
    print("longpressed");
  }
}
