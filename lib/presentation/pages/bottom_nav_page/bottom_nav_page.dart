import 'package:flutter/material.dart';
import 'package:newser/presentation/pages/bookmark_page/bookmark_page.dart';
import 'package:newser/presentation/pages/home_page/home_page.dart';
import 'package:newser/presentation/pages/search_page/search_page.dart';
import 'package:newser/presentation/pages/setting_page/setting_page.dart';
import 'package:newser/presentation/themes/app_colors.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  var pages = [
    const HomePage(),
    const SearchPage(
      isClicktoSearch: false,
    ),
    const BookmarkPage(),
    const SettingPage()
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              pages[currentIndex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 7.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = 0;
                            });
                          },
                          icon: Image.asset(
                            'assets/icons/home_icon.png',
                            color: currentIndex == 0
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = 1;
                            });
                          },
                          icon: Image.asset(
                            'assets/icons/search_icon.png',
                            color: currentIndex == 1
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = 2;
                            });
                          },
                          icon: Icon(
                            Icons.bookmark_add_outlined,
                            size: 26.0,
                            color: currentIndex == 2
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              currentIndex = 3;
                            });
                          },
                          icon: Icon(
                            Icons.settings_outlined,
                            color: currentIndex == 3
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          )),
                    ],
                  ),
                  margin: const EdgeInsets.only(
                      bottom: 14.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: AppColor.primarColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12.0)),
                  height: 45.0,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
