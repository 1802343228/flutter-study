import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day07 extends StatefulWidget {
  @override
  _Day07State createState() => _Day07State();
}

class _Day07State extends State<Day07>{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("限制内容的边距组件",style: TextStyle(color: Colors.black,fontSize:20),),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('/asset/images/practice.jpg',),
              ),
              SizedBox(height: 10,),
              Container(
                margin:EdgeInsets.only(top:10.0,left:120.0),
                constraints:
                    BoxConstraints.tightFor(width:280.0,height:100.0),
                decoration:BoxDecoration(
                  gradient: RadialGradient(
                    colors: [Colors.red,Colors.orange],
                    center: Alignment.topLeft,
                    radius: .98
                    ),
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black54,
                        offset:Offset(2.0,2.0),
                        blurRadius:4.0
                      )
                    ]
                ),
                transform: Matrix4.rotationZ(.2),
                alignment: Alignment.center,
                child: Text(
                  "5.20",style:TextStyle(color: Colors.white,fontSize:40.0),
                ),
              ),
              SizedBox(height:80,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 300,
                  maxWidth: 100
                  ),
                  child: Container(
                    color:Colors.red,
                  ),
                  ),
            ],
            ),
        ),
        ),
    );
  }
}