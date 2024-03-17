import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.alreadyHaveAnAccount,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          AppStrings.signIn,
          style: TextStyle(
            color: AppColors.gradientTwo,
          ),
        )
      ],
    );
  }
}
