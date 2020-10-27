import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day11 extends StatefulWidget {
  @override
  _Day11State createState() => _Day11State();
}

class _Day11State extends State<Day11> {
  List<String> list = List();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("ListView的使用"),
        centerTitle: true,
       ),
       body: ListView.builder(
         itemCount: list.length,
         itemBuilder:(context,index) {
           return ListTile(
             leading: CircleAvatar(
               radius: 30,
               backgroundImage: NetworkImage(list[index]),
             ),
             title: Text("测试数据"+(index+1).toString()),
             subtitle: Text("副标题"),
             trailing: FlatButton(
               onPressed: (){},
               color: Color(0xFF2196f3),
               child: Text("详情",style:TextStyle(color:Colors.white),),
               ),
           );
         }),
    );
   
  }
   void _getData() {
      int i = 0;
      while(i++ <20) {
        list.add(
          "https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1"
        );
      }
      setState(() {
      });
    }
}
