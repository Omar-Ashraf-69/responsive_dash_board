
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/all_expensises.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice.dart';

class AllExpensesAndInvoiceSection extends StatelessWidget {
  const AllExpensesAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        AllExpensises(),
        SizedBox(
          height: 16,
        ),
        QuickInvoice(),
        SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
