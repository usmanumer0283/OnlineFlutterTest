import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oraxtech/posts/PostModel.dart';


class Posts extends StatelessWidget {
  PostModel postsModel;

  double image;
  Posts(this.postsModel);
  @override
  Widget build(BuildContext context) {


    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white
      ),
      child : Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon:Icon(Icons.arrow_back_ios, color: Colors.black45, size: 20,),
            onPressed: (){Navigator.of(context).pop();},),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},),
          ],
          title:new Center(child: new  Text('Explore', style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.black,
          ),
            textAlign: TextAlign.center,
          ),),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ),
        ),



      ),
    );



  }
}