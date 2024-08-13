import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';

class Newsservice {
  Future<List<Article>> getNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&domains=bbc.com');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
  Future<List<Article>> getSportsNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&q=%D8%A7%D9%84%D8%A3%D9%88%D9%84%D9%85%D8%A8%D9%8A%D8%A7%D8%AF');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
  Future<List<Article>> getTechNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&q=%D8%B0%D9%83%D8%A7%D8%A1%20OR%20%D8%A7%D8%A8%D9%84%20OR%20%D9%86%D8%AA');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
  Future<List<Article>> getHealthNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&q=%D8%B9%D9%84%D8%A7%D8%AC%20OR%20%D9%85%D8%B3%D8%AA%D8%B4%D9%81%D9%89%20OR%20%D8%A7%D9%85%D8%B1%D8%A7%D8%B6%20OR%20%D9%85%D8%B1%D8%B6');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
  Future<List<Article>> getEntertainNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&q=%D8%AA%D8%B1%D9%81%D9%8A%D9%87%20OR%20%D8%A7%D9%84%D8%B9%D9%84%D9%85%D9%8A%D9%86%20OR%20%D8%AD%D9%81%D9%84');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
  Future<List<Article>> getScienceNews() async {
    final dio = Dio();
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?language=ar&apiKey=b0b51b55d8bd4126965f5972c487f000&q=%D8%B9%D9%84%D9%88%D9%85%20OR%20%D9%81%D9%8A%D8%B2%D9%8A%D8%A7%20OR%20%D9%86%D8%A7%D8%B3%D8%A7');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Article> articleModels = [];
      for (var article in articles) {
        articleModels.add(Article(
            title: article['title'],
            image: article['urlToImage'],
            subtitle: article['description'],
            url: article['url']));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
}
