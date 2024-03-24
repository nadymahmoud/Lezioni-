import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/features/dash/presentation/views/home_view.dart';
import 'package:lezioni/features/dash/presentation/widgets/custom_drawer_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/header_home_widget.dart';

import '../widgets/sky_right_now_widget.dart';

class SkyRightNowView extends StatelessWidget {
  const SkyRightNowView({super.key});

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
              padding: const EdgeInsets.all(16.0),
              child: CustomDrawerWidget(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Column(
                  children: [
                    HeaderHomeWidget(),
                    SkyRightNowWidget(),
                    SizedBox(
                      height: 18,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
