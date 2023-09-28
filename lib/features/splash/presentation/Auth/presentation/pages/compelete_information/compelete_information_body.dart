import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/space_widget.dart';
import 'package:e_commerce/features/splash/presentation/Auth/presentation/pages/compelete_information/compelete_information_item.dart';
import 'package:flutter/material.dart';

class CompeleteInformationBody extends StatelessWidget {
  const CompeleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16),
      child:  Column(
        children: [
          VerticalSpace(10),
          CompeleteInfoItem(text: 'Enter your name'),
          VerticalSpace(2),
          CompeleteInfoItem(text: 'Enter your phone number'),
          VerticalSpace(2),
          CompeleteInfoItem(text: 'Enter your address', maxLines: 5),
          VerticalSpace(5),
          CustomGeneralButton(text: 'Login'),
        ],
      ),
    );
  }
}
