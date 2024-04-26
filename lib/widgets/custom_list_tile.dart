
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.image, required this.title, required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        image,
      ),
      title:  Text(title),
      titleTextStyle: AppStyles.styleSemiBold16(context),
      subtitle:  Text(subtitle),
      subtitleTextStyle: AppStyles.styleRegular12(context),
    );
  }
}
