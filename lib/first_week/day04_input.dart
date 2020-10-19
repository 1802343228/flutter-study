import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day04 extends StatefulWidget {
  @override
  _Day04State createState() => _Day04State();
}

class _Day04State extends State<Day04> {
  //按钮的状态
  bool _radioSelected = true;
  bool _checkboxSelected = true;

  //焦点
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();

  //定义一个controller
  TextEditingController _nameController = TextEditingController();
  TextEditingController _pswController = TextEditingController();

  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin:EdgeInsets.all(10),
          alignment:Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Switch(
                  value: _radioSelected,
                  onChanged:(value) {
                    setState(() {
                      _radioSelected = value;
                    });
                  } ,
                  ),
              ),
              Checkbox(
                value: _checkboxSelected,
                activeColor: Colors.red,
                onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
              ),
              Column(
                children: <Widget>[
                  TextField(
                    focusNode: focusNode1,
                    autofocus: true,
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText:"用户名",
                      hintText:"用户名或邮箱",
                      prefixIcon:Icon(Icons.person)
                    ),
                    onChanged: (v) {
                      setState(() {});
                      print("用户名是>>>>>>>"+_nameController.value.text);
                    },
                    ),
                    TextField(
                      focusNode: focusNode2,
                      controller: _pswController,
                      decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        prefixIcon: Icon(Icons.lock)
                      ),
                      obscureText: true,
                    ),
                    Text("用户名是：" + _nameController.value.text),
                    RaisedButton(
                      child: Text("切换焦点"),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(focusNode2);
                      },
                      ),
                      RaisedButton(
                        child: Text("切换焦点"),
                        onPressed: () {
                          FocusScope.of(context).requestFocus(focusNode2);
                        },
                        ),
                        RaisedButton(
                          child: Text("隐藏键盘"),
                          onPressed: () {
                            focusNode1.unfocus();
                            focusNode2.unfocus();
                          },
                          ),
                ],
              ),
              Expanded(
                child: 
                Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: TextField(
                    focusNode:focusNode3,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "自定义TextField",
                      fillColor: Colors.grey,
                      filled: true,
                      contentPadding: EdgeInsets.only(left:10),
                      border: OutlineInputBorder(
                        borderSide:BorderSide(
                          color:Colors.red,
                        )
                      )
                       ),
                  ),
                ),
                )
            ],
            ),
        ),
        ),
    );
  }
}