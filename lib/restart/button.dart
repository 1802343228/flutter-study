import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonStu extends StatefulWidget {
  @override
  _ButtonStuState createState() => _ButtonStuState();
}

class _ButtonStuState extends State<ButtonStu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FloatingActionButton(
          child: Text("FloatingActionButton"),
          onPressed: () {
            print("FloatingActionButton Click");
          },
        ),
        RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () {
            print("RaisedButton Click");
          },
        ),
        FlatButton(
          child: Text("FlatButton"),
          onPressed: () {
            print("FlatButton Click");
          },
        ),
        OutlineButton(
          child: Text("OutlineButton"),
          onPressed: () {
            print("OutlineButton Click");
          },
        )
      ],
    );
  }
}
//自定义按钮
class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:RaisedButton(
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.min,//设置缩小
          children:<Widget>[
            Icon(Icons.people),
            SizedBox(width:10,),
            Text("按钮",style:TextStyle(fontSize:20,color:Colors.white),),
          ]
        ),
        onPressed: () => print("按钮发生点击"),
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(8)
        ),
        )
    );
  }
}
