import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';

class DegreeView extends StatelessWidget {
  const DegreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkPurple,
        body: Center(
          child: Text(' Degree View'),
        ));
  }
}
