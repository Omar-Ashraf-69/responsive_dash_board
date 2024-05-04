import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_invoice_section.dart';
import 'package:responsive_dash_board_project/widgets/card_transactionhistory_income_section.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_project/widgets/mobile_layout.dart';

class TabletDashBoard extends StatelessWidget {
  const TabletDashBoard({super.key});

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
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: MobileDashboardLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    ));
  }
}
