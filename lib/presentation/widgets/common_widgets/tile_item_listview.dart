import 'package:flutter/material.dart';
import 'package:newser/presentation/widgets/common_widgets/title_item.dart';

class TilteItemListView extends StatelessWidget {
  const TilteItemListView({Key? key, required this.isBookmark})
      : super(key: key);
  final bool isBookmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 24.0),
      child: ListView.builder(
          itemCount: 15,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (item, contex) {
            return TileItemWidget(isBookmark: isBookmark);
          }),
    );
  }
}
