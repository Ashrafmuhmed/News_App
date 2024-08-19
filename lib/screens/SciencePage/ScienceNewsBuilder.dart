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
  var res;

  @override
  void initState() {
    super.initState();
    res = Newsservice().getScienceNews();
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
            return const Text('Invalid request in the current time....');
          }
        });
  }
}

// isLoading ? 
//       SliverToBoxAdapter(
//           child: Center(
//             child: CircularProgressIndicator(
//               color: Colors.orangeAccent,
//             ),
//           ),
//       )
//     : Newslistview(articles: articles);