import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });
  final Function() onTap;
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(color: Colors.white),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
              color: AppColors.gradientTwo,
            ),
          ),
        )
      ],
    );
  }
}
