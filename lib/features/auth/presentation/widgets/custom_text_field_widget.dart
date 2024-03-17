import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_strings.dart';
import 'package:lezioni/core/utils/app_text_style.dart';
import 'package:lezioni/features/auth/presentation/views/create_account_view.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, this.hintText, this.suffixIcon});
  final String? hintText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 519,
      height: 60,
      child: TextField(
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
