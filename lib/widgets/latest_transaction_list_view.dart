
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/user_info_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/widgets/transaction_item.dart';

class LatestTransactionsListView extends StatelessWidget {
  const LatestTransactionsListView({
    super.key,
  });

  static const users = [
    UserInfoModel(
      name: "Omar Ashraf",
      email: "Omar.Ashraf.Abdulrahman@gmail.com",
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: "Omar Ashraf",
      email: "Omar.Ashraf.Abdulrahman@gmail.com",
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: "Omar Ashraf",
      email: "Omar.Ashraf.Abdulrahman@gmail.com",
      image: Assets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: users
              .map((e) => IntrinsicWidth(child: TransactionItem(userInfo: e)))
              .toList(),
        ));
    // return ListView.builder(
    //   itemCount: 3,
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (context, index) =>
    //       SizedBox(
    //         height: 75,
    //         child: IntrinsicWidth(child: CustomListTile(userInfo: users[index]))),
    // );
  }
}
