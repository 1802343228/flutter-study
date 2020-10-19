import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day02 extends StatefulWidget {
  @override
  _Day02State createState() => _Day02State();
}

class _Day02State extends State<Day02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
          margin: EdgeInsets.all(10),
          alignment:Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hello,fluter" * 10,
                textAlign:TextAlign.left,
                maxLines:1,
                overflow:TextOverflow.ellipsis,
                textScaleFactor:1.5,
              ),
              Text(
                "TextStyle pratice",
                style: TextStyle(
                  color:Colors.blue,
                  fontSize:18.0,
                  height:1.2,
                  fontFamily:"Courier",
                  background:new Paint()..color = Colors.greenAccent,
                  decoration:TextDecoration.underline,
                  decorationStyle:TextDecorationStyle.dashed
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "张三",style:TextStyle(
                      fontSize:24,color:Colors.black
                    )),
                    TextSpan(text:"回复",style:TextStyle(fontSize: 24,color:Colors.grey)),
                    TextSpan(
                      text:"李四:",
                      style: TextStyle(color: Colors.black,fontSize:24),
                    ),
                    TextSpan(
                      text: "flutter很有趣，值得你套娃",
                      style: TextStyle(color:Colors.black,fontSize:24),
                    ),
                  ]
                )
              )
          ],),
        ),
      ),
    );
  }
}