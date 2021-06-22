import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello/components/tabbaritem.dart';
import 'package:hello/views/home.dart';
import 'package:hello/views/mall.dart';
import 'package:hello/views/group.dart';
import 'package:hello/views/profile.dart';
import 'package:hello/views/subject.dart';

class TabbarStu extends StatefulWidget {
  @override
  _TabbarStuState createState() => _TabbarStuState();
}

class _TabbarStuState extends State<TabbarStu> {
  var currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '豆瓣App',
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("TEST"),
        // ),
        bottomNavigationBar: BottomNavigationBar(
          // selectedItemColor: Colors.red,//选中时的颜色
          // unselectedItemColor: Colors.black,
          unselectedFontSize: 14,
          selectedFontSize: 14,
          //导航栏超过5个item 导航栏切换时会变将图标顶上去 使用下面的方法可以固定导航栏
          type: BottomNavigationBarType.fixed,//固定导航栏 
          currentIndex: currentindex,//当前点击的tabbar
          items: [
            TabBarItem("home", '首页'),
            TabBarItem("home", '小组'),
            TabBarItem("home", '小组'),
            TabBarItem("home", '小组'),
            TabBarItem("home", '小组'),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.home),
            //   title: Text('首页')
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.category),
            //   title: Text('分类')
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.category),
            //   title: Text('书影音')
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.category),
            //   title: Text('分类')
            // ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.category),
            //   title: Text('分类')
            // )
          ],
          onTap: (int index) {
            setState(() {
              currentindex = index;
            });
          },
        ),
        body: IndexedStack(
          index: currentindex,
          children:<Widget>[
            Home(),
            Mall(),
            Profile(),
            Subject(),
            Group()
          ]
        )
        
      ),
    );
  }
}

