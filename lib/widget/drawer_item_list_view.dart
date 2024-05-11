import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> item = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashBoard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMytransaction),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletaccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyinvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                  print(activeIndex);
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerItemModel: item[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
