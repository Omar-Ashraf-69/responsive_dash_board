import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/transaction_model.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});
  final TransactionModel transaction;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 6),
      child: ListTile(
        title: Text(transaction.title),
        titleTextStyle: AppStyles.styleSemiBold16(context),
        subtitle: Text(transaction.date),
        subtitleTextStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffaaaaaa)),
        trailing: Text(transaction.amount),
        leadingAndTrailingTextStyle: TextStyle(
          color: transaction.isWithDraw
              ? const Color(0xfff3735e)
              : const Color(0xff7cd87A),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
