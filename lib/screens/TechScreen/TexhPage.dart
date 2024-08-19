import 'package:flutter/material.dart';
import 'package:news_cloud_app/screens/TechScreen/TechNewsBuilder.dart';
// import 'NewsListView.dart';

class Techpage extends StatelessWidget {
  const Techpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(0, 105, 240, 175),
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'technology',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cantarell'),
              ),
            ],
          ),
        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            // SliverToBoxAdapter(
            //     child: Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 44),
            //   child: Divider(
            //     height: 1,
            //     color: Colors.black,
            //   ),
            // )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            Technewsbuilder(),
          ],
        ));
  }

  
}
