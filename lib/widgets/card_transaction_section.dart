import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/card_section.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_project/widgets/transaction_history.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        widget: Column(
      children: [
        CardSection(),
        Divider(
          color: Color(0xfff1f1f1),
          height: 40,
        ),
        TransactionHistory(),
      ],
    ));
  }
}
