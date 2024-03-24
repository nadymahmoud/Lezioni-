import 'package:flutter/material.dart';
import 'package:lezioni/core/functions/navigation.dart';
import 'package:lezioni/core/utils/app_assets.dart';
import 'package:lezioni/features/dash/data/models/drawer_item_model.dart';
import 'package:lezioni/features/dash/presentation/widgets/drawer_item_widget.dart';

class DrawerItemListViewWidget extends StatefulWidget {
  const DrawerItemListViewWidget({
    super.key,
  });

  @override
  State<DrawerItemListViewWidget> createState() =>
      _DrawerItemListViewWidgetState();
}

class _DrawerItemListViewWidgetState extends State<DrawerItemListViewWidget> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesHomeIcons,
    ),
    DrawerItemModel(
      image: Assets.imagesDegreeIcons,
    ),
    DrawerItemModel(
      image: Assets.imagesIcon3,
    ),
    DrawerItemModel(
      image: Assets.imagesMusicIcons,
    ),
    DrawerItemModel(
      image: Assets.imagesCommunityIcons,
    )
  ];
  List<DrawerItemModel> items2 = [
    DrawerItemModel(
      image: Assets.imagesHomeActive,
    ),
    DrawerItemModel(
      image: Assets.imagesDegreeActive,
    ),
    DrawerItemModel(
      image: Assets.imagesIcon3,
    ),
    DrawerItemModel(
      image: Assets.imagesMusicActive,
    ),
    DrawerItemModel(
      image: Assets.imagesCommunityActive,
    )
  ];
  bool isActive = true;
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
              height: 30,
            ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(
                  () {
                    activeIndex = index;
                  },
                );
              }
              // if (activeIndex == 0) {
              //   customRquiredPush(context, 'path');
              // }else if( activeIndex == 1){
              //   customRquiredPush(context, 'path');
              // }else if( activeIndex == 2){
              //   customRquiredPush(context, 'path');
              // }else if( activeIndex == 3){
              //   customRquiredPush(context, 'path');
              // }else if( activeIndex == 4){
              //   customRquiredPush(context, 'path');

              // }
            },
            child: DrawerItemWidget(
                isActive: activeIndex == index,
                drawerItemModel: isActive ? items2[index] : items[index]),
          );
        },
        itemCount: items.length);
  }
}
