import 'package:flutter/material.dart';

class NewsListViewComp extends StatelessWidget {
  const NewsListViewComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (item, context) {
              return InkWell(
                onTap: () {}, // Handle your onTap
                child: Ink(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/images/news_image.jpg',
                    fit: BoxFit.cover,
                  ),
                  color: Colors.blue,
                ),
              );
            }));
  }
}
