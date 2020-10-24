import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day08 extends StatefulWidget {
  @override
  _Day08State createState() => _Day08State();
}

class _Day08State extends State<Day08>{
  int _selectedIndex = 1;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Tabbar"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),title:Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.business),title:Text('Business')),
            BottomNavigationBarItem(icon: Icon(Icons.school),title:Text('School')),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.blue,
          onTap: _onItemTapped,
          ),
          body:Center(
            child: Container(
              alignment: Alignment.center,
              child: Text("scaffold的body"),
            ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: _onAdd
              ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd(){}
}