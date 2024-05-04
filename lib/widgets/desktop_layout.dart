import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          Expanded(flex: 3, child: AllExpensesAndCardSection()),
        ],
      ),
    );
  }
}

class AllExpensesAndCardSection extends StatelessWidget {
  const AllExpensesAndCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: AllExpensesAndInvoiceSection()),
                ),
                SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: CardTransactionhistoryIncomeSection(),
                ),
              ],
            )),
      ],
    );
  }
}
