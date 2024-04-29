import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/drawer_item_model.dart';
import 'package:responsive_dash_board_project/models/user_info_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/widgets/custom_list_tile.dart';
import 'package:responsive_dash_board_project/widgets/drawer_item_section.dart';
import 'package:responsive_dash_board_project/widgets/inactive_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomListTile(
              userInfo: UserInfoModel(
                  name: "Omar Ashraf",
                  email: "Omar.Ashraf.Abdulrahman@gmail.com",
                  image: Assets.imagesAvatar3),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsSection(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettings,
                  title: "Settings system",
                )),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: Assets.imagesLogout,
                    title: 'Logout',
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
