import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';


class Day21 extends StatefulWidget {
  @override
  _Day21State createState() => _Day21State();
}

class _Day21State extends State<Day21> {
  List<String> list = List();
  EasyRefreshController _controller = EasyRefreshController();
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("ListView的第三方插件使用"),
        centerTitle: true,
        ),
        body: EasyRefresh(
          controller:_controller,
          header:MaterialHeader(),
          footer:MaterialFooter(),
          onRefresh:() async{
            this.pageIndex = 0;
            _getData();
            _controller.finishRefresh();
            setState((){

            });
          },
          onLoad: () async{
            this.pageIndex += 1;
            _getData();
            _controller.finishLoad(noMore:list.length>100);
            setState(() {
              
            });
          },
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context,index) {
              return ListTile(
                leading:CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(list[index]),
                ),
                title: Text("测试数据"+(index + 1).toString()),
                subtitle: Text("副标题"),
                trailing: FlatButton(
                  onPressed: (){},
                  color:Color(0xFF2195f3),
                  child: Text("详情",style:TextStyle(color: Colors.white,fontSize:16),),
                  ),
              );
            },
            ),
        ),
    );
  }
  void _getData() {
    int i = 0;
    if(pageIndex == 0){
      list = List();
      while(i ++ <20){
        list.add("https://rs.sfacg.com/web/novel/images/NovelCover/Big/2020/06/6883e15b-3405-4b9f-88a5-dbb3f8219798.jpg");
      }
      setState(() {});
    }else {
      while(i++ <10){
        list.add("https://rs.sfacg.com/web/novel/images/NovelCover/Big/2020/06/6883e15b-3405-4b9f-88a5-dbb3f8219798.jpg");
      }
      setState(() {
      });
    }
  }
}