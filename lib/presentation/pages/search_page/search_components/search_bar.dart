import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/search_page/search_page.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class SearchBarComp extends StatefulWidget {
  const SearchBarComp(
      {Key? key,
      required this.textEditingController,
      this.color,
      required this.isSarchPage})
      : super(key: key);
  final TextEditingController textEditingController;
  final Color? color;
  final bool isSarchPage;

  @override
  State<SearchBarComp> createState() => _SearchBarCompState();
}

class _SearchBarCompState extends State<SearchBarComp> {
  bool isWritten = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        margin: const EdgeInsets.only(top: 20.0, bottom: 22.0),
        height: 42.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: widget.color ?? AppColor.unselectedColor),
        child: Stack(
          children: [
            Center(
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/icons/search_icon.png'),
                    height: 20.0,
                  ),
                  Expanded(
                    child: TextField(
                      controller: widget.textEditingController,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          isWritten = false;
                        } else {
                          isWritten = true;
                        }

                        setState(() {});
                      },
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.only(left: 8.0, right: 8.0),
                        border: InputBorder.none,
                        helperStyle: TextStyle(color: AppColor.titleColor),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                  isWritten
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              widget.textEditingController.text = "";
                              isWritten = false;
                            });
                          },
                          child: const CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColor.redColor,
                            child: Icon(
                              Icons.close,
                              color: AppColor.whiteColor,
                              size: 20.0,
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            widget.isSarchPage == false
                ? InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchPage(
                                    isClicktoSearch: true,
                                  )));
                    },
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        color: AppColor.unselectedColor,
                        child: Row(children: [
                          Row(
                            children: const [
                              Image(
                                image:
                                    AssetImage('assets/icons/search_icon.png'),
                                height: 20.0,
                              ),
                              TextWidget(
                                title: '  Search',
                                size: 15.0,
                              )
                            ],
                          ),
                        ]),
                      ),
                    ))
                : const SizedBox()
          ],
        ));
  }
}
