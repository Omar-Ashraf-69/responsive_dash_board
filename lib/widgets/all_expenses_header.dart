import 'package:flutter/material.dart';
import 'package:responsive_dash_board_project/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptionWidget(),
        // DropdownButton(
        //     items: <String>['Monthly', 'Yearly', 'Daily']
        //         .map((String value) {
        //       return DropdownMenuItem(
        //           value: value, child: Text(value));
        //     }).toList(),
        //     onChanged: (_) {}),
      ],
    );
  }
}


class RangeOptionWidget extends StatelessWidget {
  const RangeOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
