
import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_invoice_section.dart';
import 'package:responsive_dash_board_project/widgets/card_transactionhistory_income_section.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          CardTransactionhistoryIncomeSection(),
        ],
      ),
    );
  }
}
