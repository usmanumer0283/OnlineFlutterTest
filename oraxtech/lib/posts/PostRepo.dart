import 'package:http/http.dart' as http;
import 'package:oraxtech/posts/PostModel.dart';
import 'dart:convert';




class PostRepo {
  Future<PostModel> GetallPosts() async{
    final result = await http.Client().get("https://jsonplaceholder.typicode.com/posts");
    if(result.statusCode != 200)
      throw Exception('Api Failed ');
    return parsedJson(result.body);
  }

  PostModel parsedJson(final response){
    final jsonDecoded = json.decode(response);
    //  final jsonWeather = jsonDecoded["main"] ;
    return PostModel.fromJson(jsonDecoded);
  }



}