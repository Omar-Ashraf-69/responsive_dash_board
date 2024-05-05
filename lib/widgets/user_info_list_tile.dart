import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board_project/models/user_info_model.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfo,
  });
  final UserInfoModel userInfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFFFAFAFA),
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              userInfo.image,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    userInfo.name,
                    style: AppStyles.styleMedium16(context),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    userInfo.email,
                    style: AppStyles.styleRegular12(context),
                  ),
                ),
              ],
            ),
          ],
        ),
        // child: ListTile(
        //   contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        //   leading: SvgPicture.asset(
        //     Assets.imagesAvatar1,
        //     width: 40,
        //     height: 40,
        //   ),
        //   title: const Text("Omar Ashraf"),
        //   titleTextStyle: AppStyles.styleMedium16(context),
        //   subtitle: const Text("Omar.Ashraf.Abdulrahman@gmail.com"),
        //   subtitleTextStyle: AppStyles.styleRegular12(context),
        // ),
      ),
    );
  }
}
