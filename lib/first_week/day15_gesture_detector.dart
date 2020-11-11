import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day15 extends StatefulWidget {
  @override
  _Day15State createState() => _Day15State();
}

class _Day15State extends State<Day15> {
  var gestureStatus = 'Gesture';
  var _width = 180.0;
  var _scale = 1.0;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('DataTable Demo'),primary: true),
      body: Container(
        child:Stack(
          children: <Widget>[
            Center(
              child:GestureDetector(
                child: Image.network(
                  "https://avatars3.githubusercontent.com/u/59445871?s=460&u=da5694544e03959d2e2c54ea5b2a29c67174cbcc&v=4",
                  width:_width,
                ),
                //缩放开始
                onScaleStart: (ScaleStartDetails details) {
                  print('onScaleStart:$details.focalPoint');
                },
                onTap: () {
                  print("点击时除非");
                },
                onLongPress: () {
                  print("长按时触发");
                },
                onDoubleTap: () {
                  print("双击时触发");
                },
                onHorizontalDragStart: (details) {
                  print("水平滑动时触发");
                },
                //缩放变化时触发
                onScaleUpdate: (ScaleUpdateDetails details){
                  setState(() {
                    _scale = details.scale.clamp(0.5,5);
                    _width = 180*_scale;
                  });
                },
                ),
            )
          ],
        )
      ),
    );
  }
}