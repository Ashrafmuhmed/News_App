import 'package:flutter/material.dart';
import 'package:news_cloud_app/services/NewsListView.dart';
import 'package:news_cloud_app/services/NewsService.dart';
//cached network image
import '../../models/article.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var fut;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fut = Newsservice().getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
        future: fut,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.orangeAccent,
                ),
              ),
            );
          } else if (snapshot.hasData) {
            return Newslistview(articles: snapshot.data ?? []);
          } else if (snapshot.hasError)
            return const SliverToBoxAdapter(
              child: Text('Oops there was an error , try again later'),
            );
          else {
            return const SliverToBoxAdapter(
              child: Text('Oops there was an error , try again later'),
            );
          }
        });
  }
}
// }

// class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
//   List<Article> articles = [];
//   bool isLoading = true;

//   Future<void> getGeneralNews() async {
//     articles = await Newsservice().getNews();
//     setState(() {});
//     isLoading = false;
//   }

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: Newsservice().getNews(),
//         builder: (context, snapshot) {
//           return Newslistview(articles: snapshot.data ?? []);
//         });
//     // return isLoading ?
//     //   SliverToBoxAdapter(
//     //       child: Center(
//     //         child: CircularProgressIndicator(
//     //           color: Colors.orangeAccent,
//     //         ),
//     //       ),
//     //   )
//     // : Newslistview(articles: articles);
//   }
// }
