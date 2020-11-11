import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hello/test/test1.dart';


class Day20 extends StatefulWidget {
  @override
  _Day20State createState() => _Day20State();
}

class _Day20State extends State<Day20> {
  String str;
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("路由练习2"),
        ),
        body: Container(
          width:MediaQuery.of(context).size.width,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color:Colors.blue,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Test1()));
                }, 
                child: Text("跳转并销毁当前页面"),
                ),
                FlatButton(
                  color:Colors.blue,
                  onPressed: () async {
                    final result = await Navigator.pushNamed(context,'test3');
                    print("获取到的值是："+result);
                    setState(() {
                      str = result;
                    });
                    print('返回的数据结果是'+result);
                  }, 
                  child: Text("路由名跳转"),
                  ),
                  Text("返回的数据是:$str")
            ],
            ),
        ),
    );
  }
  @override 
  void dispose() {
    print("页面销毁");
    super.dispose();
  }
}