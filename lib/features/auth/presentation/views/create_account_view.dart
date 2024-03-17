import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurple,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(fit: BoxFit.cover, Assets.imagesBackgroundImage),
          Positioned(
              child: Center(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GradientText(AppStrings.createYourAccount, colors: [
                AppColors.gradientOne,
                AppColors.gradientTwo,
              ]),
              const SizedBox(
                height: 30,
              ),
            ],
          )))
        ],
      ),
    );
  }
}
