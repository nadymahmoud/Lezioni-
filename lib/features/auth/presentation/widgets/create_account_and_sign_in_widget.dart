import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class CreateAndSignInWidget extends StatelessWidget {
  const CreateAndSignInWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: Center(
              child: Text(
            text,
            style: CustomTextStyle.inter600Style20.copyWith(fontSize: 18),
          )),
          decoration: kInnerDecoration,
        ),
      ),
      height: 60.0,
      decoration: kGradientBoxDecoration,
    );
  }
}

final kInnerDecoration = BoxDecoration(
  color: AppColors.darkPurple,
  borderRadius: BorderRadius.circular(15),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient:
      LinearGradient(colors: [AppColors.gradientOne, AppColors.gradientTwo]),
  borderRadius: BorderRadius.circular(15),
);
