import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../controllers/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "49",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: 20,
    color: primaryColor,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    value: 20,
    color: Colors.red,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    value: 10,
    color: Colors.green,
    showTitle: false,
    radius: 20,
  ),
  PieChartSectionData(
    value: 15,
    color: Colors.yellow,
    showTitle: false,
    radius: 18,
  ),
  PieChartSectionData(
    value: 15,
    color: primaryColor.withOpacity(0.1),
    showTitle: false,
    radius: 16,
  ),
];
