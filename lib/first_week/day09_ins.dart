import 'package:flutter/material.dart';

class FirstPractise extends StatefulWidget {
  @override
  _FirstPractiseState createState() => _FirstPractiseState();
}

class _FirstPractiseState extends State<FirstPractise> with SingleTickerProviderStateMixin{
  TabController _tabController;
  String imageUrl = 'https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1';
  @override 
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0,length:5, vsync: this);
  }

  @override 
  Widget build(BuildContext context) {
    //用Scaffold构建页面布局框架
    return Scaffold(
      //AppBar构建页面标题栏
      appBar: AppBar(
        title:Text('PracticeOne Widget'),
        primary:true,
        leading:IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        //点击跳转页面
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: () {
              gotoPage();
            }),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>> [
                PopupMenuItem<String>(
                  child: Text("热度"),
                  value: "hot",
                  ),
                  PopupMenuItem<String>(
                    child: Text("最新"),
                    value: "new",
                    ),
              ],
              onSelected: (String action) {
                switch(action) {
                  case "hot":
                    print("hot");
                    break;
                  case "new":
                    print("new");
                    break;
                }
              },
              onCanceled: () {
                print("onCanceled");
              },
              )
        ],
        //TabBar
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: <Widget>[
            Tab(
              text:"最新",
            ),
             Tab(
              text:"关注",
            ),
             Tab(
              text:"热搜",
            ),
             Tab(
              text:"热门",
            ),
             Tab(
              text:"我的",
            ),
          ],
          ),
        ),
        //主体内容
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
              child:Column(
                children: <Widget>[
                  getTabOne(),
                  Expanded(
                    child: getTabOne(),
                    )
                ],
                ),
            ),
            Center(
              child:Text("data2")
            ), 
            Center(
              child:Text("data3")
            ),
             Center(
              child:Text("data4")
            ),
             Center(
              child:Text("data5")
            ),
          ],
          ),
      );
  }
  
  Widget getTabOne() {
    return Expanded(
      child: Column(
        children:<Widget>[
  
          //图片圆角美化
          ClipRRect(
            child: Stack(
              alignment:Alignment.bottomRight,
              children:<Widget>[
                Image.network(
                  imageUrl,
                  fit:BoxFit.fitWidth,
                  width:MediaQuery.of(context).size.width,
                  height:200
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color:Colors.red,
                    shape:BoxShape.rectangle,
                    borderRadius:BorderRadius.only(
                      topLeft:Radius.circular(10),
                      bottomLeft:Radius.circular(10),
                      bottomRight:Radius.circular(10)
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    'best',
                    style:TextStyle(color: Colors.white,fontSize:10),
                  ),
                  ),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(20),
              bottomLeft:Radius.circular(20),
              bottomRight:Radius.circular(20),
            ),
            ),
            //标题设置
            Container(
              alignment:Alignment.centerLeft,
              child:Text(
                '2020冬天来了',
                style:TextStyle(
                  color:Colors.black,
                  fontWeight:FontWeight.bold,
                  fontSize:20
                ),
              ),
            ),
            //row横向线性布局
            Row(children: <Widget>[
              Text(
                '2000 浏览 .',
                style:TextStyle(color: Colors.grey,fontSize:10),
              ),
               Text(
                '126 喜欢 .',
                style:TextStyle(color: Colors.grey,fontSize:10),
              ),
               Text(
                '132 评论',
                style:TextStyle(color: Colors.grey,fontSize:10),
              ),
            ],
            ),
            //设置间隔
            SizedBox(
              height:5,
            ),
            Expanded(
              //  child:SizedBox(
              //    height: 200.0,
              child: Row(
              children: <Widget>[
              Container(
                width: 26,
                height: 26,
                child: CircleAvatar(
                  backgroundImage:NetworkImage("https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1"),
                  radius: 50.0,
              ),
              ),
              // ),
              Text(
                'mob',
                style:TextStyle(
                  color: Colors.black,
                  fontWeight:FontWeight.bold,
                  fontSize:12
                ),
              ),
              Icon(
                Icons.verified_user,
                size:15,
                color:Colors.teal,
              ),
              
              Expanded(
                child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  ' 5 分钟前',
                  style: TextStyle(color:Colors.grey,fontSize:12),
                ),
                ),
                ),
            ],
            ),
            ),
     // ),
            
            Expanded(
                child: Container(
                margin:EdgeInsets.only(top:10,bottom:10),
                width:MediaQuery.of(context).size.width,
                height:0.2,
                color:Colors.grey,
              ),
              ),
        
           
        
        ],
        ),
      );
  }
  //跳转到登录页
  void gotoPage() {

  }
}

  