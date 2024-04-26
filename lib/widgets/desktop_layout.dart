import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_project/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          const SizedBox(
            width: 32,
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Column(
                      children: [
                        AllExpensesHeader(),
                        
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

