import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/expenses_item_model.dart';
import 'package:responsive_dash_board_project/widgets/all_expensises_item_header.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';
import 'all_expenses_header.dart';

class AllExpensises extends StatelessWidget {
  const AllExpensises({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            children: [
              const AllExpensesHeader(),
              const SizedBox(
                height: 16,
              ),
              AllExpensesItem(
                itemModel: AllExpensesItemModel(
                    itemImage: Assets.imagesIncome,
                    itemName: 'Income',
                    itemPrice: '\$20.158',
                    itemDate: 'Apr 2022'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
  });
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensiseItemHeader(
            image: itemModel.itemImage,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            itemModel.itemName,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemModel.itemDate,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemModel.itemPrice,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
