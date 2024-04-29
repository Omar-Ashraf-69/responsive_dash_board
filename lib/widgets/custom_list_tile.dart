import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board_project/models/user_info_model.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.userInfo,
  });
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Card(
      
              color: const Color(0xfffafafa),
              elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfo.image,
            width: 35,
            height: 35,
          ),
          title: Text(userInfo.name),
          titleTextStyle: AppStyles.styleSemiBold16(context),
          subtitle: Text(userInfo.email),
          subtitleTextStyle: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
