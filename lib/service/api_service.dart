import 'dart:convert';

import 'package:http/http.dart';
import 'package:newsapi/models/Article.dart';

class ApiService{
  final endPoint = "https://newsapi.org/v2/everything?q=tesla&from=2022-07-27&sortBy=publishedAt&apiKey=4fb94fbfabe6488b9b0f88d4620dd797";
  Future<List<Article>> getArticle() async{
    Response response = await get(Uri.parse(endPoint));
    if(response.statusCode == 200){

      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles = body.
      map((dynamic item) => Article.fromJson(item)).toList();
      return articles;

    }else {
      throw 'Data not found';
    }
  }
}