import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';
import '../Custom_Widgets/News_Container.dart';

class Newslistview extends StatelessWidget {
  final List<Article> articles;
  const Newslistview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: NewsContainer(article: articles[index]),
        );
      },
      childCount: articles.length,
    ));
  }
}

//  
