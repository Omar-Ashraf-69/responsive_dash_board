import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/drawer_item_model.dart';
import 'package:responsive_dash_board_project/widgets/active_drawer_item.dart';
import 'package:responsive_dash_board_project/widgets/inactive_drawer_item.dart';

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
