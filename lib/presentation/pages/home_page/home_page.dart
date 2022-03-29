import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/home_page/home_components/category_hori_list.dart';
import 'package:newser/presentation/pages/home_page/home_components/news_list_view.dart';
import 'package:newser/presentation/pages/home_page/home_components/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SearchBarComp(textEditingController: searchController),
          const CategoryListComp(),
          const NewsListViewComp(),
        ],
      ),
    );
  }
}
