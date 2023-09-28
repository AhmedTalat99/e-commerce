import 'package:e_commerce/features/splash/presentation/widgets/Splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xFF689436) ,
      body:SplashBody() ,
    );
  }
}