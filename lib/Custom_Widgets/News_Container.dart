import 'package:flutter/material.dart';
import 'package:news_cloud_app/models/article.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsContainer extends StatelessWidget {
  final Article article;
  const NewsContainer({super.key, required this.article});
  Future<void> _launchUrl() async {
  final Uri _url = Uri.parse(article.url!);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchUrl(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 0,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: article.image != null
                  ? Image.network(
                      article.image!,
                      height: 210,
                    )
                  : Image.network(
                      'https://th.bing.com/th?id=OIP.o5UmC0JE6_jfNycsQms0hwHaFS&w=295&h=211&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',
                      height: 210,
                    )),
          SizedBox(
            height: 5,
          ),
          Text(
            article.title!,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'PTSansNarrow'),
          ),
          Text(
            article.subtitle ?? '',
            maxLines: 2,
            style: TextStyle(color: const Color.fromARGB(255, 132, 132, 132), fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
