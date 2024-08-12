import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:news_cloud_app/Custom_Widgets/Header_Category.dart';
import 'package:news_cloud_app/models/article.dart';
import 'package:news_cloud_app/screens/HealthPage/HealthNewsBuilder.dart';
import 'package:news_cloud_app/screens/HomePage/GeneralNewsBuilder.dart';
import 'package:news_cloud_app/screens/HomePage/ListHorVerti.dart';
import 'package:news_cloud_app/screens/SciencePage/ScienceNewsBuilder.dart';
import 'package:news_cloud_app/screens/SportsScreen/SportsNewsBuilder.dart';
import 'package:news_cloud_app/screens/TechScreen/TechNewsBuilder.dart';
import 'package:news_cloud_app/services/NewsListView.dart';
import 'package:news_cloud_app/services/NewsService.dart';
import '../../Custom_Widgets/News_Container.dart';
// import 'NewsListView.dart';

class Sciencepage extends StatelessWidget {
  const Sciencepage({super.key});

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
                'science',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cantarell'),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
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
            Sciencenewsbuilder(),
          ],
        ));
  }

  
}
