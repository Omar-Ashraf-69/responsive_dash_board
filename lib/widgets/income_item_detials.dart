
import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/models/chart_item_details.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class ChartItemDetials extends StatelessWidget {
  const ChartItemDetials({
    super.key,
    required this.item,
  });
  final ChartItemDetailsModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: item.color != const Color(0xFFE2DECB)
              ? ShapeDecoration(
                  shape: const OvalBorder(),
                  color: item.color,
                )
              : BoxDecoration(
                  color: item.color,
                ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.itemText,
          style: AppStyles.styleRegular16(context),
        ),
        const Spacer(),
        Text(
          '${item.itemValue}%',
          style: AppStyles.styleMedium16(context),
        )
      ],
    );
  }
}
