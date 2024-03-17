import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GradientTextWidget extends StatelessWidget {
  const GradientTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return GradientText(text,
        textAlign: TextAlign.center,
        style: CustomTextStyle.inter500Style24,
        colors: [
          AppColors.gradientOne,
          AppColors.gradientTwo,
        ]);
  }
}
