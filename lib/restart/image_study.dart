import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ImageStu extends StatefulWidget {
  @override
  _ImageStuState createState() => _ImageStuState();
}

class _ImageStuState extends State<ImageStu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:300,
        height:300,
        //引入本地图片
        child: Image.asset('images/1.jpg'),
        //设置圆形图片的另一种方式 且不会变形
        // child: ClipOval(
        //   child:Image.network(
        //     "src",

        //     fit: BoxFit.cover,
        //     width: 100,
        //     hei
        
        //ght: 100,
        //     )
        // ),
        decoration:BoxDecoration(
          // child: Image.network(
        //   "https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg",
        //   alignment: Alignment.bottomRight, //图片显示方位/对齐方式
        //   color: Colors.yellow,
        //   colorBlendMode: BlendMode.screen,//设置图片背景颜色
        //   // fit: BoxFit.cover,//图片全屏显示
        //   repeat: ImageRepeat.repeatX,//x轴复制平铺
        //   ),
          // borderRadius:BorderRadius.circular(150),//配置圆角
          color: Colors.yellow,
          borderRadius:BorderRadius.all(
            Radius.circular(150)
          ),
          image: DecorationImage( 
            image: NetworkImage("https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg"),
            fit: BoxFit.cover //整体拉伸图片
        ),
        ),
      ),
    );
  }
}

//圆角图片
class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          "https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg",
        width: 150,
        height: 150,
        ),
      ),
    );
  }
}

//圆形图片
class AssetsImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child:Image.network(
        "https://res.cloudinary.com/dci1eujqw/image/upload/v1616769558/Codepen/waldemar-brandt-aThdSdgx0YM-unsplash_cnq4sb.jpg",
        width: 150,
        height: 150,
        )
    );
  }
}