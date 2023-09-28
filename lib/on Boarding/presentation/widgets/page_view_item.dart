import 'package:e_commerce/core/utils/size_confiz.dart';
import 'package:e_commerce/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(15),
        SizedBox(
          height: SizeConfig.defaultSize! * 15,
          child: Image.asset(
            image!,
          ),
        ),
        const VerticalSpace(3),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1.5),
        Text(
          subTitle!,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
