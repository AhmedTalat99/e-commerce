import 'package:e_commerce/core/utils/size_confiz.dart';
import 'package:e_commerce/on%20Boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 600,
      ),
    );
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextVeiw();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 51,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset('lib/assets/images/splash_view_image.png'),
        ],
      ),
    );
  }

  void goToNextVeiw() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingview(), transition: Transition.fade);
    });
  }
}
