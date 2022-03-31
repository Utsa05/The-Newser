import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/view_news_page/view_news_page.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class NewsListViewComp extends StatelessWidget {
  const NewsListViewComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(bottom: 10.0),
            child: const TextWidget(
              title: 'News Feed',
              color: AppColor.titleColor,
              weight: FontWeight.bold,
              size: 18.0,
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (item, context) {
                return const NewItem();
              }),
        ],
      ),
    );
  }
}

class NewItem extends StatelessWidget {
  const NewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 1,
      child: Container(
        margin: const EdgeInsets.only(bottom: 7.0),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Center(
                    child: Image.asset(
                  "assets/images/images.jpg",
                  fit: BoxFit.cover,
                  height: 200.0,
                ))),
            Container(
              margin: const EdgeInsets.only(left: 10.0, top: 8.0),
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
              decoration: BoxDecoration(
                  color: AppColor.whiteColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0)),
              child: const TextWidget(
                color: AppColor.blackColor,
                title: 'This is news title',
                size: 17.0,
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              height: 200.0,
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => const ViewNewsPage()));
              },
            ),
            Positioned(
              right: 4.0,
              child: Container(
                margin: const EdgeInsets.only(top: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset('assets/icons/bookmark_icon.png',
                      height: 35.0, color: AppColor.whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
