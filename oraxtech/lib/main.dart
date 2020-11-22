import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oraxtech/users/UserBloc.dart';
import 'package:oraxtech/users/UserProfile.dart';
import 'package:oraxtech/users/UserRepo.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Testing App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,


            body:Center(
              child: BlocProvider(
                builder: (context) => UserBloc(UserRepo()),
                child: SearchPage(),
              ),

            )
        )
    );
  }
}




class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context);
    var idController = TextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        BlocBuilder<UserBloc,UserState >(
          builder: (context, state){
            if(state is UserIsNotSearched)
              return Container(
                padding: EdgeInsets.only(left: 32, right: 32,),
                child: Column(
                  children: <Widget>[
                    Text("User Info", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Colors.black),),
                    SizedBox(height: 24,),
                    TextFormField(

                      controller: idController,
                      decoration: InputDecoration(
                        prefixIcon:IconButton(
                          color: Colors.black,
                          onPressed:(){
                            userBloc.add(FetchUser(idController.text));
                          } ,
                          icon: Icon(Icons.search),

                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid
                            )
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                style: BorderStyle.solid
                            )
                        ),

                        hintText: "enter user id ",
                        hintStyle: TextStyle(color: Colors.black),

                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            else if(state is UserIsLoading)
              return Center(child : CircularProgressIndicator());
            else if(state is UserIsLoaded)
              return UserProfile(state.getUser, idController.text);
            else
              return Text("Ooops...something went wrong",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black)
              );
          },
        )

      ],
    );
  }
}


