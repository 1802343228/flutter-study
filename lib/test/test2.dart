import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  final name;
  final hobby;
  Test2(this.name,{this.hobby});
  @override
  _Test2State createState() => _Test2State(this.name,this.hobby);
}

class _Test2State extends State<Test2> {
  final name;
  final hobby;
_Test2State(this.name,this.hobby);

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("带参路由跳转"),
        centerTitle: true,
        ),
        body: Center(
          child:Text("传过来的名字："+this.name+";传过来的hobby值"+widget.hobby),
        ),
    );
  }
}