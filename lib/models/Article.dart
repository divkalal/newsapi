import 'package:flutter/material.dart';

class Article{
  final String author;
  final String title;
  final String description;
  final String urlToImage;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
});

  factory Article.fromJson(Map<String,dynamic>json){
    return Article(
        author: json['author'] == null ? null :json['author'],
        title: json['author'] == null ? null :json['title'],
        description: json['author'] == null ? null :json['description'],
        urlToImage: json['author'] == null ? null :json['urlToImage']
    );
  }
  }
