import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/latest_transaction_list_view.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionsListView(),
      ],
    );
  }
}

