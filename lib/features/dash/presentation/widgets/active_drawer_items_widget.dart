import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/features/dash/data/models/drawer_item_model.dart';

class ActiveDrawerItemsWidget extends StatelessWidget {
  const ActiveDrawerItemsWidget({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            child: Center(
              child: SvgPicture.asset(drawerItemModel.image,
                  height: 20, width: 20),
            ),
            decoration: BoxDecoration(
              color: AppColors.darkPurple,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.gradientOne, AppColors.gradientTwo]),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
