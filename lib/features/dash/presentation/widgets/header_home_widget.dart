import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class HeaderHomeWidget extends StatelessWidget {
  const HeaderHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        child: CustomScrollView(scrollDirection: Axis.horizontal, slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Row(children: [
              Text(AppStrings.welcomeToYourSanctum,
                  style: CustomTextStyle.exo500Style20),
              Spacer(),
              SvgPicture.asset(Assets.imagesLightIcon),
              SvgPicture.asset(Assets.imagesSwitchIcons),
              SvgPicture.asset(Assets.imagesDarkIcons),
              Spacer(),
              Container(
                padding: EdgeInsets.all(1),
                child: Container(
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(Assets.imagesDuotone),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(Assets.images15),
                        ]),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.darkPurple),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [AppColors.gradientOne, AppColors.gradientTwo],
                    )),
                width: 59,
                height: 30,
              ),
              SizedBox(
                width: 30,
              ),
              SvgPicture.asset(
                Assets.imagesSearch,
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                Assets.imagesNotifications,
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 30,
              ),
              Image.asset(
                Assets.imagesProfilePng,
                width: 35,
                height: 35,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  AppStrings.profileName,
                  style: CustomTextStyle.inter400Style15,
                ),
              ),
              SvgPicture.asset(
                Assets.imagesBottomIcon,
                height: 8,
                width: 8,
              ),
              SizedBox(
                width: 22,
              )
            ]),
          )
        ]));
  }
}
