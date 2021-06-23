import 'package:flutter/material.dart';
import 'package:hello/components/dashed_line.dart';
class Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("小组4"),
      ),
      body:Center(
        child:Container(
          width: 300,
          height: 200,
          child: DashedLine(
            axis:Axis.vertical,
            dashedWidth: 1,
            dashedHeight: 8,
            count: 10,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}