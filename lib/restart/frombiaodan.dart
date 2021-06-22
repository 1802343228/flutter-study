import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FormBiaodanWidget extends StatefulWidget {
  @override
  _FormBiaodanWidgetState createState() => _FormBiaodanWidgetState();
}

class _FormBiaodanWidgetState extends State<FormBiaodanWidget> {
  String username;
  String password;
  GlobalKey<FormState> formGolbalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formGolbalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              // autocorrect: true,//自动验证开启之后就不需要在点击注册按钮之后调用validate方法了
              decoration:
                  InputDecoration(icon: Icon(Icons.people), labelText: "用户名"),
                  onSaved: (value) {
                    print("执行了username的onSaved方法");
                    this.username = value;
                  },
                  validator: (value) {
                    if(value == null || value.length == 0) {
                      return "账号不能为空";
                    } 
                    return null;
                  },//表单验证
            ),
            TextFormField(
              // autocorrect: true,
              obscureText: true, //密码暗文显示
              decoration:
                  InputDecoration(icon: Icon(Icons.lock), labelText: "密码"),
                  onSaved: (value) {
                    print("执行了password的onSaved方法");
                    this.password = value;
                  },
                  validator: (value) {
                    if(value == null || value.length == 0) {
                      return "密码不能为空";
                    } 
                    return null;
                  },
            ),
            SizedBox(height:12),//间距
            Container(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                  child: Text(
                    "注册",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    print("注册按钮被点击");
                    formGolbalKey.currentState.save();//自动执行对应from里的textfield的onsaved方法
                    formGolbalKey.currentState.validate();
                    print("username:$username passowrd:$password");
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
