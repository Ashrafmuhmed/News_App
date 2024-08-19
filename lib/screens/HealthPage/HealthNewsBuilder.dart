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

  var res;

  @override
  void initState() {
    super.initState();
    res = Newsservice().getHealthNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: res,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.orangeAccent,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            return Newslistview(articles: snapshot.data!);
          } else {
            return Text('Invalid request try again later....');
          }
        });
  }
}


/* 
 isLoading ? 
      
    : ;
*/