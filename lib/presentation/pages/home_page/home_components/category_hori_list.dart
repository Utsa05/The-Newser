import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class CategoryListComp extends StatelessWidget {
  const CategoryListComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categoryList = ["All", "Popular", "Best", "World", "Views"];
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      height: 40.0,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
                categoryList.length,
                (index) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0)),
                      padding: const EdgeInsets.only(left: 7.0, right: 7.0),
                      child: MaterialButton(
                        elevation: 0.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: AppColor.primarColor,
                        onPressed: () {},
                        child: TextWidget(
                          weight: FontWeight.bold,
                          color: AppColor.whiteColor,
                          title: categoryList[index],
                        ),
                      ),
                    ))),
      ),
    );
  }
}
