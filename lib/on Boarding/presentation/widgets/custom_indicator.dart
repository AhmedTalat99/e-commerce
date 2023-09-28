import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/constants.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key,required this.dotIndex});
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        activeColor: kMainColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: kMainColor),
        ),
      ),
      dotsCount: 3,
      position: dotIndex!.toInt(),
    );
  }
}
