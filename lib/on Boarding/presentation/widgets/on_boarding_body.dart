import 'package:e_commerce/core/utils/size_confiz.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:e_commerce/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:e_commerce/features/splash/presentation/Auth/presentation/pages/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 7,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page == 2) {
                Get.to(() => const LoginView());
              } else {
                pageController?.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              }
            },
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
