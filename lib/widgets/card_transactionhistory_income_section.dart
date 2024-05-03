
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/card_transaction_section.dart';
import 'package:responsive_dash_board_project/widgets/income_section.dart';

class CardTransactionhistoryIncomeSection extends StatelessWidget {
  const CardTransactionhistoryIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        CardAndTransactionSection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );
  }
}
