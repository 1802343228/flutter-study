import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class StateWidgetText extends StatefulWidget {
  @override
  _StateWidgetTextState createState() => _StateWidgetTextState();
}

class _StateWidgetTextState extends State<StateWidgetText> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world",
      home: Scaffold(
        appBar: AppBar(
          title: Text("标题"),
        ),
        body: ContentWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("监听了浮动按钮");
          }),
      ),
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ContentWidgetSate();
}

class ContentWidgetSate extends State<ContentWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //垂直排布之后居中
        children: <Widget>[
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print("监听按钮点击");
                  setState(() {
                    counter++;
                  });
                },
                child: Text("计数+1"),
              ),
              RaisedButton(
                onPressed: () {
                  print("监听按钮点击");
                  setState(() {
                    counter--;
                  });
                },
                child: Text("计数-1"),
              ),
            ],
          ),
          Text(
            "当前计数：$counter",
            style: TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}

//不能实现 StatelessWidget里不能定义变量（无状态）
// class ContentWidget extends StatelessWidget {
//   final int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child:Column(
//         mainAxisAlignment: MainAxisAlignment.center,//垂直排布之后居中
//         children:<Widget>[
//           RaisedButton(onPressed:() {
//             print("监听按钮点击");
//             // counter ++ ;
//           },
//           child: Text("计数：1"),
//           ),
//           Text("当前计数：$counter",style:TextStyle(fontSize: 25),),
//         ],
//       ),
//     );
//   }
// }
