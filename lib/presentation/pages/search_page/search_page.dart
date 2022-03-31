import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newser/presentation/pages/search_page/search_components/search_bar.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/common_widgets/tile_item_listview.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key, required this.isClicktoSearch}) : super(key: key);
  final bool isClicktoSearch;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
          toolbarHeight: 80.0,
          elevation: 0.0,
          backgroundColor: AppColor.primarColor,
          title: Container(
              margin: widget.isClicktoSearch
                  ? const EdgeInsets.only(top: 10.0, left: 0.0, right: 0.0)
                  : const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: SearchBarComp(
                isSarchPage: true,
                textEditingController: searchController,
                color: AppColor.whiteColor,
              ))),
      body: const TilteItemListView(
        isBookmark: true,
      ),
    );
  }
}
