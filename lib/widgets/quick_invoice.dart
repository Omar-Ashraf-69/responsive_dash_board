import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_project/widgets/latest_transaction.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(
            height: 12,
          ),
          LatestTransactions(),
          Divider(
            height: 48,
            color: Color(0xfffafafa),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
