import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';
import 'package:lezioni/features/dash/presentation/views/sky_right_now_view.dart';
import 'package:lezioni/features/dash/presentation/widgets/custom_container_home_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/custom_drawer_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/header_home_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/sky_right_now_home_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/sky_right_now_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurple,
      body: Stack(children: [
        Image.asset(fit: BoxFit.cover, Assets.imagesMaskGroup),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomDrawerWidget(),
            ),
            Expanded(
                child: ListView(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: HeaderHomeWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, bottom: 20),
                  child: Row(
                    children: [
                      CustomContainerHomeWidget(
                        text: AppStrings.liveMeditation,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SkyRightNowHomeWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 30),
                  child: Row(
                    children: [
                      CustomContainerHomeWidget(
                        text: AppStrings.monographs,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomContainerHomeWidget(
                        text: AppStrings.cyclesUntilInitiation,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomContainerHomeWidget(
                        text: AppStrings.communityEvents,
                      ),
                    ],
                  ),
                ),
              ]),
            ])),
          ],
        ),
      ]),
    );
  }
}
