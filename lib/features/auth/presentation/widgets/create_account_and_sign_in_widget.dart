import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class CreateAndSignInWidget extends StatelessWidget {
  const CreateAndSignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: Center(
              child: Text(
            AppStrings.createAccount,
            style: CustomTextStyle.inter600Style20,
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
  //border: Border.all(color: Colors.green),
  borderRadius: BorderRadius.circular(15),
);
