import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_invoice_section.dart';
import 'package:responsive_dash_board_project/widgets/card_transactionhistory_income_section.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';

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
              child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: AllExpensesAndInvoiceSection()),
            ),
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: CardTransactionhistoryIncomeSection(),
            ),
          ),
        ],
      ),
    );
  }
}
