import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("无参路由跳转"),
        centerTitle: true,
        ),
        body: Center(
          child:Text("test1页面"),
        ),
    );
  }
}