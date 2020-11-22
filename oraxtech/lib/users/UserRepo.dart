import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:oraxtech/users/UserModel.dart';



class UserRepo {
  Future<UserModel> getUser(String id) async{
    final result = await http.Client().get("https://reqres.in/api/users/$id");

    if(result.statusCode != 200)
      throw Exception('Api Failed ');

    return parsedJson(result.body);
  }

  UserModel parsedJson(final response){
    final jsonDecoded = json.decode(response);
    //  final jsonWeather = jsonDecoded["main"] ;
    return UserModel.fromJson(jsonDecoded);
  }



}