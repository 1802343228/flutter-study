import 'package:flutter/material.dart';
class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("小组1"),
      ),
      body:Center(
        child:Text("小组1",style:TextStyle(fontSize: 50)),
      )
    );
  }
}