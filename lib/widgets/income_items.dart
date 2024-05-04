import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/chart_item_details.dart';
import 'package:responsive_dash_board_project/widgets/income_item_detials.dart';

class ChartItems extends StatelessWidget {
  const ChartItems({
    super.key,
  });
  static final List<ChartItemDetailsModel> items = [
    const ChartItemDetailsModel(
      itemText: "Design service",
      itemValue: '40',
      color: Color(0xFF1E8BC6),
    ),
    const ChartItemDetailsModel(
      itemText: "Design product",
      color: Color(0xFF4FB8F1),
      itemValue: '25',
    ),
    const ChartItemDetailsModel(
        itemText: "Product royalti", itemValue: '20', color: Color(0xFF053F60)),
    const ChartItemDetailsModel(
      itemText: "Other",
      itemValue: '22',
      color: Color(0xFFE2DECB),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        children: items.map((e) => ChartItemDetials(item: e)).toList(),
      ),
    );
    //child: ListView.separated(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index) => ChartItemDetials(item: items[index]),
    //     separatorBuilder: (context, index) => const SizedBox(
    //       height: 10,
    //     ),
    //   ),
    // );
  }
}
