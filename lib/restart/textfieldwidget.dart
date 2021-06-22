import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BiaodanWidget extends StatefulWidget {
  @override
  _BiaodanWidgetState createState() => _BiaodanWidgetState();
}

class _BiaodanWidgetState extends State<BiaodanWidget> {
  @override
  Widget build(BuildContext context) {
    return RegisterWidget();
  }
}

class RegisterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterWidgetState();
  }
}

class RegisterWidgetState extends State<RegisterWidget> {
  final textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    textEditingController.text = "设置默认值";
    textEditingController.addListener(() {
      print("监听到值的改变：${textEditingController.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText:"username",
              hintText: "请输入用户名",//提示信息
              border: OutlineInputBorder(
                borderSide: BorderSide(width :3)//外边框
              ),
              fillColor: Colors.purple,//设置输入框背景颜色 需要下面的filled支持才生效
              filled: true
            ),
            onChanged: (value) {
              print("当前的值：$value");
            },
            onSubmitted: (value) {
              print("当前提交的值：$value");
            },
            controller: textEditingController,//监听改变
          )
          ],
      ),
    );
  }
}
