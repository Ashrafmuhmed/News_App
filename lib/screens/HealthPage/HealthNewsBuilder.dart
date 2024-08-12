
import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';
import 'package:news_cloud_app/services/NewsListView.dart';
import 'package:news_cloud_app/services/NewsService.dart';

class Healthnewsbuilder extends StatefulWidget {
  const Healthnewsbuilder({
    super.key,
  });

  @override
  State<Healthnewsbuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<Healthnewsbuilder> {
  List<Article> articles = [];
  bool isLoading = true;

  Future<void> getGeneralNews() async {
    articles = await Newsservice().getHealthNews();
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
