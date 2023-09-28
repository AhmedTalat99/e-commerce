import 'package:e_commerce/core/constants.dart';
import 'package:e_commerce/core/utils/size_confiz.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../compelete_information/compelete_information_body.dart';
import '../../compelete_information/compelete_information_view.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(7),
        SizedBox(
          height: SizeConfig.defaultSize! * 15,
          child: Image.asset('lib/assets/images/logo.png'),
        ),
        const Text(
          'Fruit Market',
          style: TextStyle(
            color: kMainColor,
            fontSize: 40,
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      const CompleteInformtionView(),
                      duration:const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  color: const Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with',
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  color: Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with',
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
