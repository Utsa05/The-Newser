import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';
import 'package:newser/presentation/widgets/text_releted/text_widget.dart';

class CategoryListComp extends StatelessWidget {
  const CategoryListComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: 60.0,
        child: Row(
            children: List.generate(
                5,
                (index) => InkWell(
                      onTap: () {},
                      child: Ink(
                        height: 60.0,
                        child: Container(
                          child: const TextWidget(
                            title: 'Popplar',
                            color: AppColor.whiteColor,
                            weight: FontWeight.bold,
                          ),
                          decoration: BoxDecoration(
                              color: AppColor.primarColor,
                              borderRadius: BorderRadius.circular(14.0)),
                        ),
                      ),
                    ))),
      ),
    );
  }
}
