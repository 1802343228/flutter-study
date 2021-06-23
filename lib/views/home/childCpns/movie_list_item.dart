import 'package:flutter/material.dart';
import 'package:hello/components/star_rating.dart';
import 'package:hello/models/home_model.dart';
import 'package:hello/components/dashed_line.dart';
class MovieListItem extends StatelessWidget {
  final MovieItem item;
  MovieListItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border:Border(
          bottom: BorderSide(width: 10,color: Color(0xffe2e2e2))
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,//水平交叉 水平方向靠左
        children:<Widget>[
          getRankWidget(),
          SizedBox(height:12),//行间距
          getMovieContent(),
          SizedBox(height:12),
          getOriginWidget(),
        ],
      ),
    );
  }

  //获取排名显示的Widget
  Widget getRankWidget() {
    return Container(
      // padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      padding: EdgeInsets.symmetric(vertical:4,horizontal:9),//设置水平内边距为4 垂直为9
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(3)
      ),
      child: Text(
        "No.${item.rank}",
        style: TextStyle(fontSize:18,color:Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  //获取中间内容的显示
  Widget getMovieContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        getMovieImage(),
        Expanded(
          child: getDetailDescWidget()//屏幕剩余部分的宽度均让内容来显示
        ),
        getDashedWidget(),
        getWishWidget()
      ],
    );
  }

  //获取显示的图片
  Widget getMovieImage() {
    return ClipRRect(//ClipRRect相当于ClipRadiusRect
      borderRadius: BorderRadius.circular(5),
      child: Image.network(item.imageURL,height: 150,)
    );
  }

  //获取想看的Widget
  Widget getWishWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Column(
        children: <Widget>[
          Image.asset("assets/images/home/wish.png",width:32),
          SizedBox(height:6),
          Text("想看",style: TextStyle(fontSize:16,color:Color.fromARGB(255, 235, 170, 60)),)
        ],
      ),
    );
  }

  //获取详情描述的展示Widget
  Widget getDetailDescWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          getMovieNameWidget(),
          getRatingWidget(),
          getIntroduceWidget()
        ]
      ),
    );
  }

  //获取电影名称的展示
  Widget getMovieNameWidget() {
    return Stack(
      children: <Widget>[
        Icon(Icons.play_circle_outline,color: Colors.red,size:24),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: "    " + item.title,style: TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
              TextSpan(text:"(${item.playDate})",style: TextStyle(fontSize:18),)
            ]
          )
        ),
      ],
    );
  }

  //获取电影评分的Widget
  Widget getRatingWidget() {
    return Row(
      children: <Widget>[
        StarRating(
          rating: item.rating,
          size: 20,
          selectedColor: Colors.orange
        ),
        Text("${item.rating}")
      ],
    );
  }


  //获取分割线的Widget
  Widget getDashedWidget() {
    return Container(
          width: 1,
          height: 100,
          child: DashedLine(
            axis:Axis.vertical,
            dashedHeight: 8,
            count: 10,
            color: Color(0xffaaaaaa),
          ),
      );
  }

  //获取电影简介
  Widget getIntroduceWidget() {
    final genresString  = item.genres.join(" ");
    final director = item.director.name;
    final actorString = item.casts.join(" ");
    return Text(
      "$genresString / $director / $actorString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize:16),
    );
  }

  //获取原始电影名称的Widget
  Widget getOriginWidget() {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,//无穷大小 flutter会自动让宽度随屏幕大小填充
      decoration: BoxDecoration(
        color:Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(5)
      ),
      child:Text(
        item.originalTitle,
        style: TextStyle(fontSize:18,color:Colors.black54),
      ),
    );
  }
}