import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class Day22 extends StatefulWidget {
  @override
  _Day22State createState() => _Day22State();
}

class _Day22State extends State<Day22> with SingleTickerProviderStateMixin{
  AnimationController _animationController;
  Animation _animation;
  @override 
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds:2),
      vsync:this);

      _animationController.addListener((){
        setState(() {
          });
      });
      _animation = CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
      _animation = Tween(begin: 100.0,end:300.0).animate(_animation);
      super.initState();
}
      @override 
      Widget build(BuildContext context){
        return Scaffold(
          appBar:AppBar(),
          body:Column(
            children: <Widget>[
              RaisedButton(
                child: Text("开始动画"),
                onPressed: () {
                  _animationController.forward();
                },),
                Expanded(
                  child: Center(
                    child: Container(
                      width:_animation.value,
                      height:_animation.value,
                      color:Colors.red,
                    ),
                    ),
                    ),
            ],
            ),
        );
      }
      @override 
      void dispose() {
        _animationController.dispose();
        super.dispose();
      }
  
}