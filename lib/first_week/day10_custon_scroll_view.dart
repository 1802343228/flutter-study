import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day10 extends StatefulWidget {
  @override
  _Day10State createState() => _Day10State();
}

class _Day10State extends State<Day10>{
  @override 
  Widget build(BuildContext context) {
    return Material(
      child:CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned:true,
            expandedHeight: 250.0,
            flexibleSpace:FlexibleSpaceBar(
              title: const Text('CustonScrollView'),
              background: Image.network("https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1",fit: BoxFit.cover,),
              ),
          ),
          SliverGrid(
           gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
             maxCrossAxisExtent:200.0,
             mainAxisSpacing: 10.0,
             crossAxisSpacing: 10.0,
             childAspectRatio: 4.0,
             ),
             delegate: SliverChildBuilderDelegate(
               (BuildContext context,int index) {
                 return Container(
                   margin:EdgeInsets.only(top:10),
                   alignment:Alignment.center,
                   color:Colors.teal[100 * (index %9)],
                   child:Text('grid item $index'),
                 );
               },
               childCount: 20,
             ),
             ),
             SliverFixedExtentList(
               itemExtent: 50.0,
               delegate: SliverChildBuilderDelegate(
                 (BuildContext context,int index) {
                   return Container(
                     alignment: Alignment.center,
                     color: Colors.lightBlue[100 * (index % 9 )],
                     child:Text('list item $index'),
                   );
                 },
                 childCount: 20,
               ),
               ),
        ],
      ),
    );
  }
}