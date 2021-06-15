import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LianxiStu extends StatefulWidget {
  @override
  _LianxiStuState createState() => _LianxiStuState();
}

class _LianxiStuState extends State<LianxiStu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("LIANXI"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),//设置边缘内边距
      child: ListView(//超出屏幕使用这个来滚动屏幕
      children: <Widget>[
        ProductItem("Apple1","Mackbook Product","https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg"),
        ProductItem("Apple2","Mackbook Product","https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg"),
        ProductItem("Apple3","Mackbook Product","https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg")
      ],
    ),
    );
  }
}

class ProductItem extends StatelessWidget{
  //widget中的所有属性都不可变
  final String title;
  final String subtitle;
  final String imageUrl;
  ProductItem(this.title,this.subtitle,this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Column(//垂直排布
      children: <Widget>[
        Text(title,style: TextStyle(fontSize:24),),
        Text(subtitle),
        Image.network(imageUrl)
      ],
    );
  }
}