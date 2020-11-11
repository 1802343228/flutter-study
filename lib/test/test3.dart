import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test3 extends StatefulWidget {
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("路由名跳转"),
        centerTitle: true,
        ),
        body: Center(
          child:FlatButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).pop("hello");
            },
             child: Text("点击返回")),
        ),
    );
  }
}