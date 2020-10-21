import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day06 extends StatefulWidget {
  @override
  _Day06State createState() => _Day06State();
}

class _Day06State extends State<Day06> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this,duration:Duration(seconds: 3));
    
    _animationController.forward();
    _animationController.addListener(() => setState(() => {}));
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Text(
                "不设置value值。自动执行动画",
                style: TextStyle(color:Colors.black,fontSize:16),
              ),
              SizedBox(height:10),
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              SizedBox(
                height:40,
              ),
              Text("给value指定值",
              style:TextStyle(color: Colors.black,fontSize:16)),
              SizedBox(
                height:10,
              ),
              LinearProgressIndicator(
                backgroundColor:Colors.grey[200],
                valueColor:AlwaysStoppedAnimation(Colors.blue),
                value: 3.5,
              ),
              SizedBox(height: 20,),
              Text(
                "不设置Value值，自动执行动画",
                style:TextStyle(color: Colors.black,fontSize:16),
              ),
              SizedBox(
                height:20,
              ),
              CircularProgressIndicator(
                backgroundColor:Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              SizedBox(height: 20,),
              Text('设置指定大小'),
              Container(
                margin:EdgeInsets.only(top:20),
                height:80,
                width:80,
                child:
                CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(
                    Colors.blue
                  ),
                  value: 5,
                  ),
              ),
              SizedBox(height:20,),
              Text('设置动画'),
              Container(
                margin: EdgeInsets.only(top:20),
                child: LinearProgressIndicator(
                  backgroundColor:Colors.grey[200],
                  valueColor:ColorTween(begin: Colors.grey,end:Colors.blue)
                  .animate(_animationController),
                  value: _animationController.value,
                ),
              ),
            ],
          ),
        ),
        ),
    );
}
}