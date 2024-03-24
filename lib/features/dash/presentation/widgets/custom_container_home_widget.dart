import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class CustomContainerHomeWidget extends StatelessWidget {
  const CustomContainerHomeWidget({
    super.key,
    this.text,
  });
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * .42,
        padding: EdgeInsets.all(1),
        child: Container(
          child: Center(
              child: Text(
            text ?? '',
            style: CustomTextStyle.exo500Style20,
          )),
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
