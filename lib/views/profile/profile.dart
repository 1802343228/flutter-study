import 'package:flutter/material.dart';
import 'package:hello/components/star_rating.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("小组3"),
      ),
      body:Center(
        child:StarRating(
          rating: 8,
        )
      )
    );
  }
}