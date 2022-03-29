import 'package:flutter/material.dart';
import 'package:newser/presentation/themes/app_colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key, this.title, this.color, this.size, this.weight, this.line})
      : super(key: key);
  final String? title;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final int? line;

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? 'text',
      style: TextStyle(
          color: color ?? AppColor.titleColor,
          fontWeight: weight ?? FontWeight.normal,
          fontSize: size ?? 14),
      maxLines: line ?? 1,
      overflow: line != 0 ? TextOverflow.ellipsis : TextOverflow.visible,
    );
  }
}
