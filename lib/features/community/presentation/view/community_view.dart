import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';

class CommunityView extends StatelessWidget {
  const CommunityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkPurple,
        body: Center(
          child: Text(' Community View'),
        ));
  }
}
