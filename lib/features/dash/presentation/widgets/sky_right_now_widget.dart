import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';

class SkyRightNowWidget extends StatelessWidget {
  const SkyRightNowWidget(
      {super.key, this.height, this.onTapExist, this.onTap2});
  final double? height;
  final void Function()? onTapExist;
  final void Function()? onTap2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height ?? MediaQuery.of(context).size.height * .42,
        padding: EdgeInsets.all(1),
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
              Positioned(
                  bottom: 30,
                  right: 30,
                  child: Container(
                    width: 80,
                    height: 60,
                    child: Center(
                        child: GestureDetector(
                      onTap: onTapExist ??
                          () {
                            customRquiredPush(context, '/homeView');
                          },
                      child: SvgPicture.asset(Assets.imagesExistIcon),
                    )),
                    decoration: BoxDecoration(
                      color: AppColors.darkPurple,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  )),
              Positioned(
                  bottom: 120,
                  right: 30,
                  child: Container(
                    width: 80,
                    height: 60,
                    child: Center(
                        child: GestureDetector(
                      onTap: onTap2 ??
                          () {
                            customRquiredPush(
                                context, '/skyRightNowFullScreen');
                          },
                      child: SvgPicture.asset(Assets.imagesMaxIcons),
                    )),
                    decoration: BoxDecoration(
                      color: AppColors.darkPurple,
                      borderRadius: BorderRadius.circular(6),
                    ),
                  )),
            ],
          ),
          decoration: BoxDecoration(
            color: AppColors.darkPurple,
            borderRadius: BorderRadius.circular(15),
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
