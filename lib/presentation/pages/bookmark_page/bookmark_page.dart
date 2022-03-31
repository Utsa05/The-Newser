import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/common_widgets/tile_item_listview.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class BookmarkPage extends StatefulWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primarColor,
          elevation: 0.0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextWidget(
                title: 'Bookmark ',
                weight: FontWeight.bold,
                size: 19.0,
                color: AppColor.whiteColor,
              ),
              Image.asset(
                'assets/icons/bookmark_icon.png',
                height: 25.0,
                color: AppColor.whiteColor,
              )
            ],
          ),
        ),
        body: const TilteItemListView(
          isBookmark: false,
        ));
  }
}
