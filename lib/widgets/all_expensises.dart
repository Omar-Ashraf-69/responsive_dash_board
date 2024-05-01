import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_list_view.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'all_expenses_header.dart';

class AllExpensises extends StatelessWidget {
  const AllExpensises({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      widget: Column(
        children: [
          CustomHeader(
            headerText: 'All Expenses',
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
