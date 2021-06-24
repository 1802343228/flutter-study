import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'airplsy_screen.dart';
import 'email_screen.dart';
import 'home_screen.dart';
import 'pages_screen.dart';

class BottomNavgationWidget extends StatefulWidget {
  @override
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  final _BottomNavgationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(HomeScreen())//建造者模式 谁用返回谁 链式调用
      ..add(EmailScreen())
      ..add(AirplayScreen())
      ..add(PagesScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavgationColor,
            ),
            title: Text(
              'Home',
              style:TextStyle(color: _BottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavgationColor,
            ),
            title: Text(
              'Email',
              style:TextStyle(color: _BottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _BottomNavgationColor,
            ),
            title: Text(
              'Pages',
              style:TextStyle(color: _BottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _BottomNavgationColor,
            ),
            title: Text(
              'Airplay',
              style:TextStyle(color: _BottomNavgationColor)
            )
          )
        ],
        currentIndex: _currentIndex, //那个被选中
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}