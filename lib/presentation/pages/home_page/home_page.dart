import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/home_page/home_components/category_hori_list.dart';
import 'package:newser/presentation/pages/home_page/home_components/news_list_view.dart';
import 'package:newser/presentation/pages/search_page/search_components/search_bar.dart';
import 'package:newser/presentation/themes/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 150.0,
            elevation: 0.0,
            backgroundColor: AppColor.bgColor,
            title: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SearchBarComp(
                    textEditingController: searchController,
                    isSarchPage: false,
                  ),
                ),
                const CategoryListComp(),
              ],
            )),
        body: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: NewsListViewComp(),
        ),
      ),
    );
  }
}
