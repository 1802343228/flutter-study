import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';

class Day17 extends StatefulWidget {
  @override
  _Day17State createState() => _Day17State();
}

class _Day17State extends State<Day17> {
  dynamic data;
  @override 
  void initState() {
    getData();
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Dio请求接口数据练习'),
      ),
      body:data == null ? Container(
        height: 100,
        width: 100,
      ):Container(
        height:400,
        child:Column(
          children: <Widget>[
            Text('请求到的图片处'),
            Container(
              height:100,
              width:100,
              child:Image(image: NetworkImage(data['identify']['imageUrl']),fit:BoxFit.cover,),
            ),
            Text('等级是：'+data['level'].toString()),
            Text("收听的歌曲有:"+data['listenSongs'].toString()+'首')
          ],
          ),
      )
    );
  }
  getData(){
    Dio dio = Dio();
    String url = "https://music.163.com/api/v1/user/detail/1";
    dio.get(url,queryParameters:null,options:null).then((res) {
      setState(() {
        data = res.data;
      });
      print("返回的结果"+data['identify']['imageUrl'].toString());
    });
  }
}