import 'package:flutter/material.dart';
// import 'package:hello/network/http_request.dart';
import 'package:hello/models/home_model.dart';
// import 'package:hello/views/home/childCpns/movie_list_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("首页"),
      ),
      body:HomeBody()
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<MovieItem> movieItems = [];

  @override
  void initState() {
    super.initState();
    // HttpRequest.request("https://douban.uieee.com/v2/movie/top250?start=0&count=20")
    // .then((res){
    //   final subjects = res.data["subjects"];
    //   List<MovieItem> movies = [];
    //   for(var sub in subjects) {
    //     movies.add(MovieItem.fromMap(sub));
    //   }
    //   setState(() {
    //     this.movieItems = movies;
    //   });
      
    // }).catchError((onError) {
    //   print(onError);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: ListView.builder(
      //   itemCount: movieItems.length,
      //   itemBuilder: (BuildContext context,int index) {
      //     return MovieListItem(movieItems[index]);
      //   },
      // ),
    );
  }
}

