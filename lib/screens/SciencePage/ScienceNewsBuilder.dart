
import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';
import 'package:news_cloud_app/services/NewsListView.dart';
import 'package:news_cloud_app/services/NewsService.dart';

class Sciencenewsbuilder extends StatefulWidget {
  const Sciencenewsbuilder({
    super.key,
  });

  @override
  State<Sciencenewsbuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<Sciencenewsbuilder> {
  List<Article> articles = [];
  bool isLoading = true;

  Future<void> getGeneralNews() async {
    articles = await Newsservice().getScienceNews();
    setState(() {});
    isLoading = false;
  }


  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? 
      SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.orangeAccent,
            ),
          ),
      )
    : Newslistview(articles: articles);
  }

}
