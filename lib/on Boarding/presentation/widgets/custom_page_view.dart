import 'package:e_commerce/on%20Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key,required this.pageController});
final PageController? pageController; 

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:const [
        PageViewItem(
          title: 'E-Shopping',
          subTitle: 'Explore top organic fruits & grab them',
          image: 'lib/assets/images/onboarding1.png',
        ),
        PageViewItem(
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
          image: 'lib/assets/images/onboarding2.png',
        ),
        PageViewItem(
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your place',
          image: 'lib/assets/images/onboarding3.png',
        ),
      ],
    );
  }
}
