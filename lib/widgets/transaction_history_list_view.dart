import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/transaction_model.dart';
import 'package:responsive_dash_board_project/widgets/tansaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static const List<TransactionModel> items = [
    TransactionModel(
        title: 'Gift Mother Fucker',
        date: '21 April, 2024',
        amount: '\$3000',
        isWithDraw: true),
    TransactionModel(
        title: 'Mobile Recharge',
        date: '20 April, 2024',
        amount: '\$5013',
        isWithDraw: false),
    TransactionModel(
        title: 'Balance Again',
        date: '11 April, 2024',
        amount: '\$4032',
        isWithDraw: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transaction: e)).toList(),
    );
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) => TransactionItem(
        transaction: items[index],
      ),
    );
  }
}
