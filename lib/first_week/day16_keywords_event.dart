import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Day16 extends StatefulWidget {
  @override
  _Day16State createState() => _Day16State();
}

class _Day16State extends State<Day16> {
  FocusNode focusNode = FocusNode();

  @override 
  void initState() {
    super.initState();
    FocusScope.of(context).requestFocus(focusNode);
      }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('RawKeyBoardListener Demo'),
      ),
      body: RawKeyboardListener(
        focusNode: focusNode,
        onKey: (RawKeyEvent event){
          if(event is RawKeyDownEvent && event.data is RawKeyEventDataAndroid){
            RawKeyDownEvent rawKeyDownEvent = event;
            RawKeyEventDataAndroid rawKeyEventDataAndroid =  rawKeyDownEvent.data;
            print("keyCode:${rawKeyEventDataAndroid.keyCode}");
            switch(rawKeyEventDataAndroid.keyCode){
              case 19:
              break;
              case 20:
              break;
              case 21:
              break;
              case 22:
              break;
              case 23:
              break;
              default:
              break;
            }
          }
        },
        child: Center(
          child:Text("按键监听"),
        ),
        ),
    );
  }
}