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
  final _bottomNavgationColor = Colors.blue;
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
              color: _bottomNavgationColor,
            ),
            title: Text(
              'Home',
              style:TextStyle(color: _bottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _bottomNavgationColor,
            ),
            title: Text(
              'Email',
              style:TextStyle(color: _bottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pages,
              color: _bottomNavgationColor,
            ),
            title: Text(
              'Pages',
              style:TextStyle(color: _bottomNavgationColor)
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplay,
              color: _bottomNavgationColor,
            ),
            title: Text(
              'Airplay',
              style:TextStyle(color: _bottomNavgationColor)
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