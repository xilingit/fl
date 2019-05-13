import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyBottomNavigationBar();
  }
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("history"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("list"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("person"),
          ),
        ]);
  }
}
