import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'UserModel.dart';

class UserProfile extends StatelessWidget {
  UserModel userModel;
  final id;
  double image;
  UserProfile(this.userModel, this.id);
  @override
  Widget build(BuildContext context) {
    // final userBloc = BlocProvider.of<UserBloc>(context);
    // var idController = TextEditingController();
    List<String> images = [
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any",
      "https://placeimg.com/500/500/any"
    ];

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
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: () {},),
          ],
          title:new Center(child: new  Text('Profile', style: TextStyle(
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
                  Container(
                    width: 90.0,
                    height: 90.0,
                    alignment: Alignment.center,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new NetworkImage("https://i.imgur.com/BoN9kdC.png")),
                      border: Border.all(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    alignment: Alignment.center,
                    child: Text(userModel.data.first_name +' '+ userModel.data.last_name,
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.center,
                    padding:EdgeInsets.only(right: 10,left: 10) ,
                    child: Text(userModel.support.text,
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                        color: Colors.black45
                ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12),
                          bottom: BorderSide(color: Colors.black12)),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(
                              '438',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Posts',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(
                              '298',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: 10,),

                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10,),
                            Text(
                              '321k',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'Followers',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 170,
                          height: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                              color: Colors.blue,
                              onPressed: (){},
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                            ),),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 170,
                          height: 50,

                          decoration:  BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                            border: Border(
                                top: BorderSide(

                                    color: Colors.blueAccent),
                                bottom: BorderSide(color: Colors.blueAccent),
                              left: BorderSide(color: Colors.blueAccent),
                              right: BorderSide(color: Colors.blueAccent),
                            ),
                            ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),

                            child: FlatButton(
                              padding: EdgeInsets.all(10),
                              color: Colors.transparent,
                              onPressed: (){},
                              child: Text(
                                'Message',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 18),
                              ),
                            ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right:20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget> [
                            Text(
                              'Photos',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Flexible(
                              flex:6,
                              child:Divider(
                                color:Colors.transparent,
                              )
                            ),
                            IconButton(
                              icon:Icon(Icons.format_list_bulleted, color: Colors.black45, size: 20,),
                            ),
                            IconButton(
                              icon:Icon(Icons.apps, color: Colors.black45, size: 20,),

                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),

                      ),
                      child: GridView.count(

                        crossAxisCount: 3,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 15.0,
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://placeimg.com/500/500/any")),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:Image.network("https://placeimg.com/500/500/any"),),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://placeimg.com/500/500/any")),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:Image.network("https://placeimg.com/500/500/any"),),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://placeimg.com/500/500/any")),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:Image.network("https://placeimg.com/500/500/any"),),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network("https://placeimg.com/500/500/any")),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:Image.network("https://placeimg.com/500/500/any"),),
                        ],
                      )),
              ],
            ),
          ),
        ),



      ),
    );



  }
}