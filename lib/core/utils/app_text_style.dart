import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';

abstract class CustomTextStyle {
  static final inter500Style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.lightwhite,
    fontFamily: 'Inter',
  );
  static final inter400Style20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.darkPurple,
    fontFamily: 'Inter',
  );
}
