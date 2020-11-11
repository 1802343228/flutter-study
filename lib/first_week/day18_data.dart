import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:hello/data/dataText.dart';

class Day18 extends StatefulWidget {
  @override
  _Day18State createState() => _Day18State();
}

class _Day18State extends State<Day18> {
  dataText data;
  dynamic data1;
  @override 
  void initState() {
    getData();
    super.initState();
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('Dio请求接口数据练习'),
      ),

      body: data == null ? Container(
        height:100,
        width:100,
      ):Container(
        height:400,
        child:Column(children: <Widget>[
          Text("请求到的图片是"),
          Container(
          height: 100,
          width: 100,
          child: Image(image: NetworkImage(data.picUrl),fit: BoxFit.cover,),
          ),
          Text('名字:'+data.name),
          Text("专辑数量："+data.albumSize.toString()+'首')
          
        ],
        ),
      )
    );
  }
  getData() {
    Dio dio = Dio();
    String url = "https://music.163.com/api/playlist/detail?id=2557908184";
    dio.get(url,queryParameters:null,options:null).then((res){
      setState(() {
        print("返回值："+res.toString());
        data1 = res.data;
        print("返回的结果"+data1['result']['tracks'][0]['artists'][0].toString());
        data = dataText.fromJson(data1['result']['tracks'][0]['artists'][0]);
      });
    } );
  }
}