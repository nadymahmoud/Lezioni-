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
                  child: SizedBox(
            width: 550,
            child: ListView(
              shrinkWrap: true,
              children: [
                GradientText(AppStrings.createYourAccount,
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.inter500Style24,
                    colors: [
                      AppColors.gradientOne,
                      AppColors.gradientTwo,
                    ]),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  AppStrings.name,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 11,
                ),
                CustomTextFieldWidget(),
                Text(
                  AppStrings.emailAddress,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 11,
                ),
                CustomTextFieldWidget(
                  hintText: AppStrings.exampleEmail,
                ),
                Text(
                  AppStrings.password,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 11,
                ),
                CustomTextFieldWidget(
                  hintText: AppStrings.examplePassword,
                )
              ],
            ),
          )))
        ],
      ),
    );
  }
}

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, this.hintText});
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 519,
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.lightwhite,
          hintText: hintText ?? AppStrings.fullName,
          hintStyle: CustomTextStyle.inter400Style20,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
}
