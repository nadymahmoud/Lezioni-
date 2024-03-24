import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/core/utils/app_text_style.dart';
import 'package:lezioni/features/auth/presentation/widgets/create_account_and_sign_in_widget.dart';
import 'package:lezioni/features/dash/data/models/drawer_item_model.dart';
import 'package:lezioni/features/dash/presentation/widgets/active_drawer_items_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/inactive_drawer_item_widget.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItemsWidget(drawerItemModel: drawerItemModel)
        : InActiveDrawerItemsWidget(drawerItemModel: drawerItemModel);
  }
}
