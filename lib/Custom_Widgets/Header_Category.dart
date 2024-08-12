import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.title,
      required this.image,
      required this.page});
  final String title, image;
  final dynamic page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () =>
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
          return page;
        })),
        child: Container(
          width: 200,
          height: 110,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(98, 0, 0, 0),
                borderRadius: BorderRadius.circular(10)),
            width: 200,
            height: 110,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cantarell',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
