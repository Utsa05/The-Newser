import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class TileItemWidget extends StatelessWidget {
  const TileItemWidget({Key? key, required this.isBookmark}) : super(key: key);
  final bool isBookmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border.all(width: 1.0, color: AppColor.greyColor),
        borderRadius: BorderRadius.circular(14.0),
      ),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset(
                        "assets/images/images.jpg",
                        fit: BoxFit.cover,
                        height: 95.0,
                        width: 120.0,
                      )),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          child: TextWidget(
                            title: 'Popular News',
                            color: AppColor.titleColor,
                            size: 20.0,
                            weight: FontWeight.bold,
                          ),
                        ),
                        const Expanded(
                          child: TextWidget(
                            title:
                                'This is short description here you can see shor new details This is short description here you can see shor new details',
                            line: 2,
                            color: AppColor.titleColor,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: const TextWidget(
                            title: 'Status',
                            color: AppColor.whiteColor,
                          ),
                          decoration: BoxDecoration(
                              color: AppColor.primarColor,
                              borderRadius: BorderRadius.circular(15.0)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          MaterialButton(
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            height: 120.0,
            minWidth: double.infinity,
            onPressed: () {},
          ),
          Positioned(
            right: 8.0,
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: InkWell(
                onTap: () {},
                child: isBookmark
                    ? Image.asset(
                        'assets/icons/bookmark_icon.png',
                        height: 30.0,
                      )
                    : const Icon(Icons.delete,
                        color: AppColor.redColor, size: 27.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
