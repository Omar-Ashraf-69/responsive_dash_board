import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_project/models/drawer_item_model.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

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
