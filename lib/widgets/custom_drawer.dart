import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_project/models/drawer_item_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/custom_list_tile.dart';

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
            child: Card(
              color: Color(0xfffafafa),
              elevation: 0,
              child: CustomListTile(
                image: Assets.imagesAvatar3,
                title: "Omar Ashraf",
                subtitle: "Omar.Ashraf.Abdulrahman@gmail.com",
              ),
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
                const Expanded(child: SizedBox()),
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

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });
  final bool isActive;
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title),
      titleTextStyle: AppStyles.styleBold16(context),
      trailing: const VerticalDivider(
        color: Color(0xFF4EB7F2),
        thickness: 2,
        indent: 6,
        endIndent: 6,
      ),
    );
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(drawerItemModel.title),
      titleTextStyle: AppStyles.styleMedium16(context),
    );
  }
}
