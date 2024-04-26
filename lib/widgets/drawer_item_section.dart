import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/drawer_item_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/widgets/drawer_item.dart';

class DrawerItemsSection extends StatefulWidget {
  const DrawerItemsSection({super.key});

  @override
  State<DrawerItemsSection> createState() => _DrawerItemsSectionState();
}

class _DrawerItemsSectionState extends State<DrawerItemsSection> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(
      image: Assets.imagesDashboard,
      title: "DashBoard",
    ),
    DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: 'Transcations',
    ),
    DrawerItemModel(
      image: Assets.imagesStatistics,
      title: 'Statistics',
    ),
    DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: 'My Investments',
    ),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (selectedItem != index) {
            setState(() {
              selectedItem = index;
            });
          }
        },
        child: DrawerItemWidget(
          drawerItemModel: items[index],
          isActive: index == selectedItem,
        ),
      ),
    );
  }
}
