
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/expenses_item_model.dart';
import 'package:responsive_dash_board_project/utils/app_images.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      itemImage: Assets.imagesBalance,
      itemName: 'Balance',
      itemPrice: '\$20.158',
      itemDate: 'Apr 2022',
    ),
    AllExpensesItemModel(
      itemImage: Assets.imagesIncome,
      itemName: 'Expenses',
      itemPrice: '\$20.158',
      itemDate: 'Apr 2022',
    ),
    AllExpensesItemModel(
      itemImage: Assets.imagesExpenses,
      itemName: 'Expenses',
      itemPrice: '\$20.158',
      itemDate: 'Apr 2022',
    ),
  ];

  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              selectedItem = e.key;
            });
          },
          child: Padding(
            padding: e.key == 1
                ? const EdgeInsets.symmetric(horizontal: 12.0)
                : EdgeInsets.zero,
            child: AllExpensesItem(
              isActive: selectedItem == e.key,
              itemModel: e.value,
            ),
          ),
        ));
      }).toList(),
    );
    // children: items
    //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
    //     .toList());
    // return ListView.builder(
    //   physics: const NeverScrollableScrollPhysics(),
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 3,
    //   itemBuilder: (context, index) => AllExpensesItem(
    //     itemModel: items[index],
    //   ),
    // );
  }
}