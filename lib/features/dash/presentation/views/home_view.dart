import 'package:flutter/material.dart';
import 'package:lezioni/core/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.darkPurple,
        body: Center(
          child: Text(
            'Home View',
            style: TextStyle(color: AppColors.lightwhite),
          ),
        ));
  }
}
