import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';
import 'package:responsive_dash_board_project/widgets/quick_invoice.dart';

import 'all_expensises.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 16,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AllExpensises(),
                SizedBox(
                  height: 16,
                ),
                QuickInvoice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
