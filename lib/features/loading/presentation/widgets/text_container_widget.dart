import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/features/auth/presentation/widgets/gradient_text_widget.dart';

class TextContainerWidget extends StatelessWidget {
  const TextContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(color: AppColors.darkPurple),
        child: GradientTextWidget(text: AppStrings.loadingYourSanctum));
  }
}
