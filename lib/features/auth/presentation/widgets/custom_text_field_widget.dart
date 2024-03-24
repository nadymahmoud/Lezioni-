import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      this.hintText,
      this.suffixIcon,
      this.obscureText,
      this.obscuringCharacter});
  final String? hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? obscuringCharacter;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 519,
      height: 60,
      child: TextField(
        obscureText: obscureText ?? false,
        obscuringCharacter: obscuringCharacter ?? '•',
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: AppColors.lightwhite,
          hintText: hintText ?? AppStrings.fullName,
          hintStyle: CustomTextStyle.inter400Style20,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );
}
