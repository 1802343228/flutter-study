import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Day03 extends StatefulWidget {
  @override
  _Day03State createState() =>  _Day03State();
}

class  _Day03State extends State<Day03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          margin:EdgeInsets.all(10),
          alignment:Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "asset/images/practice.jpg",
                width: 200,
              ),
              CircleAvatar(
                radius:40,
                backgroundImage:NetworkImage(
                  'https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1'
                ),
              ),
              Container(
                height:90,
                width:90,
                child:ClipOval(
                  child: Image.network(
                    'https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1',
                    fit:BoxFit.cover,
                  ),
                  ),
              ),
              Container(
                width:120,
                height:120,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i2.wp.com/e4developer.com/wp-content/uploads/2018/01/spring-cloud-logo.png?resize=800%2C753&ssl=1'
                    ),
                    fit: BoxFit.cover
                    ),
                ),
              ),
              Container(
                child:Icon(Icons.cake,size:80,color:Colors.red,
                ),
              ),
            ],
          ),
        ),
        ),
    );
  }
}