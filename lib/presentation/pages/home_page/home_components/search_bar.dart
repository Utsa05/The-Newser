import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';

class SearchBarComp extends StatefulWidget {
  const SearchBarComp({Key? key, required this.textEditingController})
      : super(key: key);
  final TextEditingController textEditingController;

  @override
  State<SearchBarComp> createState() => _SearchBarCompState();
}

class _SearchBarCompState extends State<SearchBarComp> {
  bool isWritten = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.greyColor, borderRadius: BorderRadius.circular(25.0)),
      width: double.infinity,
      height: 55.0,
      child: Stack(
        children: [
          TextField(
            controller: widget.textEditingController,
            onChanged: (value) {
              if (value.isEmpty) {
                setState(() {
                  isWritten = false;
                });
              } else {
                isWritten = true;
              }
            },
            decoration: InputDecoration(
                helperStyle: const TextStyle(color: AppColor.titleColor),
                hintText: 'Search',
                prefix: Image.asset(
                  'assets/icons/search_icons.png',
                  height: 35.0,
                  width: 35,
                )),
          ),
          Center(
            child: Positioned(
              right: 10.0,
              child: InkWell(
                onTap: () {
                  isWritten = false;
                },
                onLongPress: () {
                  isWritten = false;
                },
                child: const CircleAvatar(
                  radius: 38,
                  backgroundColor: AppColor.redColor,
                  child: Icon(
                    Icons.close,
                    color: AppColor.whiteColor,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
