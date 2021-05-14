import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Conta extends StatefulWidget {
  @override
  _ContaState createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //container相当于一个div
        child: Text(
          '你好Flutter你好Flutter',
          textAlign: TextAlign.center, //让文本居中显示
          overflow: TextOverflow.ellipsis,//文本溢出处理方式
          maxLines: 1,//文本最大显示几行
          textScaleFactor: 2,//设置字体放大倍数
          textDirection: TextDirection.ltr, //从左到右排列
          style: TextStyle(
              fontSize: 40.0, //flutter中所有的数字都是double类型
              fontWeight: FontWeight.w800,//设置字体粗细
              fontStyle: FontStyle.italic,//设置字体倾斜
              decoration: TextDecoration.lineThrough,//设置了一条线穿过文本
              decorationColor: Colors.white,//设置线的颜色
              decorationStyle: TextDecorationStyle.dashed,//设置这条线为虚线
              letterSpacing: 5.0,//设置字间距
              // color:Colors.yellow,
              color: Color.fromRGBO(244, 233, 2143, 0.5) //两种方法都可以定义颜色
              ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
            //定义背景颜色
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 2.0
            ), //定义边框颜色和宽度
            borderRadius: BorderRadius.all(
              Radius.circular(20)//设置圆角
            )
          ),
      //  padding: EdgeInsets.all(10),//表示内边距
       padding:EdgeInsets.fromLTRB(10, 2, 2, 1),//也可以手动设置四个边的值
        // margin: EdgeInsets.all(10),//表示container与外部其他组件的距离
        // transform: Matrix4.translationValues(100, 0, 0),//向x轴位移
        // transform: Matrix4.rotationZ(0.3),//向Z轴旋转
        transform: Matrix4.diagonal3Values(1.2, 1, 1),//x轴变为原来的1.2倍
        alignment: Alignment.bottomLeft,//内容居于顶部的左侧
      ),
    );
  }
}
