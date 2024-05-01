import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_invoice_section.dart';
import 'package:responsive_dash_board_project/widgets/card.dart';
import 'package:responsive_dash_board_project/widgets/card_section.dart';
import 'package:responsive_dash_board_project/widgets/card_transaction_section.dart';
import 'package:responsive_dash_board_project/widgets/cards_page_view.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_project/widgets/income_section.dart';
import 'package:responsive_dash_board_project/widgets/transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: AllExpensesAndInvoiceSection(),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              children: [
                CardAndTransactionSection(),
                SizedBox(
                  height: 12,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
