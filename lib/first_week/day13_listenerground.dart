import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day13 extends StatefulWidget {
  @override
  _Day13State createState() => _Day13State();
}

class _Day13State extends State<Day13> {
  ScrollController _controller = new ScrollController();
  bool showToTopBtn = false;

  @override 
  void initState() {
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
      if(_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if(_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("滚动控制"),
        centerTitle: true,
        ),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0,
            controller: _controller,
            itemBuilder: (context,index) {
              return ListTile(title:Text("当前index的值是："+"$index"),);
            }
            ),
          ),
          floatingActionButton: !showToTopBtn ? null:FloatingActionButton(
            child: Icon(Icons.arrow_upward),
            onPressed: () {
              _controller.animateTo(
                .0, 
                duration: Duration(milliseconds:200), 
                curve: Curves.ease
                );
            }
            ),
    );
  }
}