import 'package:flutter/material.dart';
import 'package:news_cloud_app/screens/EntertainmentPage/Entertainmentpage.dart';
import 'package:news_cloud_app/screens/HealthPage/Healthpage.dart';
import 'package:news_cloud_app/screens/HomePage/HomePage.dart';
import 'package:news_cloud_app/screens/SciencePage/SciencePage.dart';
import 'package:news_cloud_app/screens/SportsScreen/SportsPage.dart';
import '../../Custom_Widgets/Header_Category.dart';
import '../TechScreen/TexhPage.dart';

class Listhorverti extends StatelessWidget {
  //assets\pexels-pixabay-248547.jpg
  const Listhorverti({super.key});
  //assets\556df31c589f2f07383394a045279a1a.jpg assets\pexels-pixabay-356040.jpg
  // assets\pexels-chokniti-khongchum-1197604-3938022.jpg   assets\istockphoto-472174743-612x612.jpg
  final List<Category> categories = const [
    Category(title: 'Sports', image: 'assets/pexels-pixabay-248547.jpg',page: Sportspage(),),
    Category(title: 'Tech', image: 'assets/OIP.jpeg',page: Techpage(),),
    Category(title: 'Health', image: 'assets/pexels-pixabay-356040.jpg',page: Healthpage(),),
    Category(
        title: 'Science',
        image: 'assets/pexels-chokniti-khongchum-1197604-3938022.jpg',page: Sciencepage(),),
    Category(
        title: 'Entertainment',
        image: 'assets/556df31c589f2f07383394a045279a1a.jpg',page: Entertainmentpage(),),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return categories[index];
        },
        scrollDirection: Axis.horizontal,
        itemCount: 5,
      ),
    );
  }
}
