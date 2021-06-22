import 'package:flutter/material.dart';

class TabBarItem extends BottomNavigationBarItem {
  TabBarItem(String iconName,String title):
    super(
    icon: Icon(Icons.home),
    title: Text('$title')
    // icon: Image.asset("asstes/images/tabbar/$iconName.png",width:30),
    // activeIcon: Image.asset("asstes/images/tabbar/${iconName}_avtice.png",width:30)
  );
}