import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({
    super.key,
  });

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        swapAnimationCurve: Curves.bounceIn,
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              setState(() {
                if (!event.isInterestedForInteractions ||
                    pieTouchResponse == null ||
                    pieTouchResponse.touchedSection == null) {
                  touchedIndex = -1;
                  return;
                }
                touchedIndex =
                    pieTouchResponse.touchedSection!.touchedSectionIndex;
              });
            },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              color: const Color(0xFF1E8BC6),
              radius: touchedIndex == 0 ? 35 : 25,
              showTitle: false,
              value: 35,
            ),
            PieChartSectionData(
              color: const Color(0xFF4FB8F1),
              radius: touchedIndex == 1 ? 35 : 25,
              showTitle: false,
              value: 25,
            ),
            PieChartSectionData(
              color: const Color(0xFF053F60),
              radius: touchedIndex == 2 ? 35 : 25,
              showTitle: false,
              value: 20,
            ),
            PieChartSectionData(
              color: const Color(0xFFE2DECB),
              radius: touchedIndex == 3 ? 35 : 25,
              showTitle: false,
              value: 22,
            ),
          ],
        ),
      ),
    );
  }
}
