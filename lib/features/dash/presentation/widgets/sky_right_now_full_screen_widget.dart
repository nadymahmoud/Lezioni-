import 'package:flutter/material.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/features/dash/presentation/widgets/sky_right_now_widget.dart';

class SkyRightNowFullScreen extends StatelessWidget {
  const SkyRightNowFullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkPurple,
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            SkyRightNowWidget(
              onTap2: () {
                customRquiredPush(context, '/skyRightNow');
              },
            ),
          ],
        ),
      ),
    );
  }
}
