import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/core/utils/app_colors.dart';
import 'package:lezioni/features/auth/presentation/widgets/create_account_and_sign_in_widget.dart';
import 'package:lezioni/features/dash/data/models/drawer_item_model.dart';
import 'package:lezioni/features/dash/presentation/widgets/drawer_items_list_view_widget.dart';
import 'package:lezioni/features/dash/presentation/widgets/inactive_drawer_item_widget.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      child: Container(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 50,
            child: SvgPicture.asset(Assets.imagesRoseDrawer),
            decoration: BoxDecoration(
                color: AppColors.roseDrawerColor,
                borderRadius: BorderRadius.circular(5)),
          ),
          SizedBox(
            height: 60,
          ),
          DrawerItemListViewWidget(),
          Expanded(
            child: SizedBox(),
          ),
          Center(
            child: Divider(
              endIndent: 10,
              indent: 10,
              color: Color(0xFFE7E7FF),
              thickness: .1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              customRquiredPush(context, '/');
            },
            child: InActiveDrawerItemsWidget(
                drawerItemModel:
                    DrawerItemModel(image: Assets.imagesLogoutIcons)),
          ),
          SizedBox(
            height: 20,
          )
        ]),
        width: 80,
        decoration: kInnerDecoration,
      ),
      decoration: kGradientBoxDecoration,
    );
  }
}
