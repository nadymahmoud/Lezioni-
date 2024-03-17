import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/features/auth/presentation/widgets/already_have_account_widget.dart';
import 'package:lezioni/features/auth/presentation/widgets/create_account_and_sign_in_widget.dart';
import 'package:lezioni/features/auth/presentation/widgets/custom_text_field_widget.dart';
import 'package:lezioni/features/auth/presentation/widgets/gradient_text_widget.dart';

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
            width: 530,
            child: ListView(
              shrinkWrap: true,
              children: [
                const GradientTextWidget(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppStrings.name,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 11,
                ),
                const CustomTextFieldWidget(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppStrings.emailAddress,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 11,
                ),
                const CustomTextFieldWidget(
                  hintText: AppStrings.exampleEmail,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  AppStrings.password,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 11,
                ),
                CustomTextFieldWidget(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.imagesShowPassword)),
                  hintText: AppStrings.examplePassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CreateAndSignInWidget(),
                const SizedBox(
                  height: 20,
                ),
                const AlreadyHaveAccountWidget(),
              ],
            ),
          )))
        ],
      ),
    );
  }
}
