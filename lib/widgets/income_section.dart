import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board_project/utils/size_config.dart';
import 'package:responsive_dash_board_project/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board_project/widgets/custom_background_container.dart';
import 'package:responsive_dash_board_project/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board_project/widgets/income_chart.dart';
import 'package:responsive_dash_board_project/widgets/income_items.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      widget: Column(
        children: [
          CustomHeader(headerText: 'Income'),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < 1235 &&
        MediaQuery.sizeOf(context).width >= SizeConfig.desktop) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: DetailedIncomeChart(),
            ),
          ),
        ],
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IncomeChart(),
          ),
          Expanded(flex: 2, child: ChartItems()),
        ],
      );
    }
  }
}
