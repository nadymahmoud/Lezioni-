import 'package:flutter/material.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class SkyRightNowHomeWidget extends StatelessWidget {
  const SkyRightNowHomeWidget({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height ?? MediaQuery.of(context).size.height * .42,
        padding: EdgeInsets.all(1),
        child: GestureDetector(
          onTap: () {
            customRquiredPush(context, '/skyRightNow');
          },
          child: Container(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    Assets.imagesSkyRightpng,
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                    child: Container(
                  width: 200,
                  height: 40,
                  child: Center(
                      child: Text(
                    AppStrings.summerSolstice,
                    style: CustomTextStyle.exo600Style18,
                  )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                ))
              ],
            ),
            decoration: BoxDecoration(
              color: AppColors.darkPurple,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [AppColors.gradientOne, AppColors.gradientTwo])),
      ),
    );
  }
}
