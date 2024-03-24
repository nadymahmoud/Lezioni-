import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lezioni/features/dash/data/models/drawer_item_model.dart';

class InActiveDrawerItemsWidget extends StatelessWidget {
  const InActiveDrawerItemsWidget({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(drawerItemModel.image,
          colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
          height: 20,
          width: 20),
    );
  }
}
