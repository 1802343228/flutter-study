import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day12 extends StatefulWidget {
  @override
  _Day12State createState() => _Day12State();
}

class _Day12State extends State<Day12> {
  List<String> pictureList = List();

  @override 
  void initState() {
    super.initState();
    _getPictureList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title:new Text('美图'),
        centerTitle:true,
      ),
      body:new GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          ),
          itemCount: pictureList.length,
          itemBuilder: (BuildContext context,int index) {
            return buildItem(pictureList[index]);
        },
        ),
    );
  }
  buildItem(item) {
    return new GestureDetector(
      onTap:() {
        Navigator.push(
          context,
          new MaterialPageRoute(
            builder: (context) =>
            new Scaffold(
              appBar:new AppBar(
                
                title: new Text('图片详情'),
              ),
              body:new Center(
                child:new Container(
                  width: 300.0,
                  child: new Image.network(
                    item,
                    fit:BoxFit.fitWidth,
                  ),
                  )
              ),
            )
            )
            );
      },
      child: new Image.network(
        item,fit:BoxFit.cover,
      ),
    );
  }
  _getPictureList() {
    for(int i  = 0;i<20;i++) {
      pictureList.add(
        "https://imgs.aixifan.com/o_1e09h5sut1uh39g56d1eqa1l4rv.jpg"
      );
    }
  }
}