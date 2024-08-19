import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';
import 'package:news_cloud_app/services/NewsListView.dart';
import 'package:news_cloud_app/services/NewsService.dart';

class Enternewsbuilder extends StatefulWidget {
  const Enternewsbuilder({
    super.key,
  });

  @override
  State<Enternewsbuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<Enternewsbuilder> {
  var res;

  @override
  void initState() {
    super.initState();
    res = Newsservice().getEntertainNews();
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
            return Text('Invalid request right now , try again later....');
          }
        }
        );
  }

  /*
  isLoading ? 
      SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.orangeAccent,
            ),
          ),
      )
    : Newslistview(articles: articles);
  */
}
