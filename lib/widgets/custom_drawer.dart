import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      width: MediaQuery.sizeOf(context).width * 1 / 6,
      child: const Column(
        children: [
          CustomListTile(
            image: Assets.imagesAvatar1,
            title: "Omar Ashraf",
            subtitle: "Omar.Ashraf.Abdulrahman@gmail.com",
          ),
        ],
      ),
    );
  }
}
