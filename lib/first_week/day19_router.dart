import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello/test/test1.dart';
import 'package:hello/test/test2.dart';
import 'package:hello/test/test3.dart';

class Day19 extends StatefulWidget {
  @override
  _Day19State createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('路由练习'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,   
          children: <Widget>[
            FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Test2(
                    "mob",hobby:"study",
                  );
                } ,));
              }, 
              child: Text("路由传参"),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(context, 'test3');
                }, 
                child: Text("路由名跳转"),
                ),
          ],
               ),
      ),
    );
  }
}