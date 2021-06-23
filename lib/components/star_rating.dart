import 'package:flutter/material.dart';
class StarRating extends StatefulWidget {
  final double rating; //当前评分
  final double maxRating; //最高评分
  final Widget unselectedImage; //未选中图标
  final Widget selectedImage; //选中图标
  final int count; //个数
  final double size; //图标大小
  final Color unselectedColor; //未选中颜色
  final Color selectedColor; //选中颜色

  StarRating({
    @required this.rating, //必传参数
    this.maxRating = 10,
    this.size = 30,
    this.unselectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffe0aa46),
    Widget unselectedImage,
    Widget selectedImage,
    this.count = 5,

    //判断有没有传图标 没有传就使用默认的图标
  }): unselectedImage = unselectedImage ?? Icon(Icons.star, size: size, color: unselectedColor,),
        selectedImage = selectedImage ?? Icon(Icons.star, size: size, color: selectedColor);


  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        getUnselectdStar(),
        getSelectdStar()
      ],
    );
  }

  //获取未选中的Star
  Widget getUnselectdStar(){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children:List.generate(widget.count, (int index) {
        return widget.unselectedImage;
      }),
    );
  }

  //获取选中的Star
  Widget getSelectdStar(){
    //计算完整的star有几个
    double oneValue  = widget.maxRating / widget.count;
    int entireCount= (widget.rating / oneValue).floor();
    
    
    //剩余的一个star显示的比例
    double leftValue =  (widget.rating - entireCount * oneValue);
    double ratioLeft  = leftValue / oneValue;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(entireCount + 1, (int index) {
        if(index < entireCount) return widget.selectedImage;
        return ClipRect(
          clipper: MyRectClipper(width: widget.size * ratioLeft),
          child: widget.selectedImage
         );
      }),
    );
  }
}

class MyRectClipper extends CustomClipper<Rect> {
  double width;
  MyRectClipper({this.width});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(MyRectClipper oldClipper) {
    return width != oldClipper.width;
  }
}