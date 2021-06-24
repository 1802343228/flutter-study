import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin{
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;

  void _increamentCounter() {
    setState(() {
      _counter ++;
    });
  }

  //build覆盖了'AutomaticKeepAliveClientMixin'中注释为'@mustCallSuper'的方法，但不调用被覆盖的方法 所以需要使用super重载build
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一次增加一个数字'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increamentCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}