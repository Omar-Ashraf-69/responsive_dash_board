import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/user_info_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_project/widgets/transaction_item.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quick Invoice',
                style: AppStyles.styleSemiBold20(context),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  color: Color(0xFFFAFAFA),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xFF4EB7F2),
                  size: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 16,
          ),
          const LatestTransactionsListView(),
        ],
      ),
    );
  }
}

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
