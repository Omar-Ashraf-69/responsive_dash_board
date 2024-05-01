import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/transaction_model.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/tansaction_item.dart';
import 'package:responsive_dash_board_project/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistroyHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "14 April, 2024",
          style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        ),
        const TransactionListView(),
      ],
    );
  }
}

class TransactionHistroyHeader extends StatelessWidget {
  const TransactionHistroyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See All',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
