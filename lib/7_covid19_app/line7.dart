import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_work/7_covid19_app/colors7.dart';

class LineReportChart extends StatelessWidget {
  const LineReportChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: getSports(),
              isCurved: true,
              dotData: const FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
              color: kPrimaryColor,
              barWidth: 4,
            ),
          ],
        ),
      ),
    );
  }

  List<FlSpot> getSports() {
    return [
      const FlSpot(0, .5),
      const FlSpot(1, 1.5),
      const FlSpot(2, .5),
      const FlSpot(3, .7),
      const FlSpot(4, .2),
      const FlSpot(5, 2),
      const FlSpot(6, 1.5),
      const FlSpot(7, 1.7),
      const FlSpot(8, 1),
      const FlSpot(9, 2.8),
      const FlSpot(10, 2.5),
      const FlSpot(11, 2.65),
    ];
  }
// ignore: must_be_immutable
}class WeeklyChart extends StatelessWidget {
  var folse = const AxisTitles(sideTitles: SideTitles(showTitles: false));

  WeeklyChart({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(
        BarChartData(
            gridData: const FlGridData(
                drawHorizontalLine: false, drawVerticalLine: false),
            barGroups: getBarGroups(),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              leftTitles: folse,
              topTitles: folse,
              rightTitles: folse,
            )),
      ),
    );
  }
}

getBarGroups() {
  List<double> barChartDatas = [6, 10, 8, 7, 12, 15, 9];
  List<BarChartGroupData> barChartGroups = [];
  barChartDatas.asMap().forEach(
        (i, value) => barChartGroups.add(
          BarChartGroupData(
            x: i,
            barRods: [
              BarChartRodData(
                toY: value,
                color: i == 4 ? kPrimaryColor : kInactiveChartColor,
                width: 16,
              )
            ],
          ),
        ),
      );
  return barChartGroups;
}

String getWeek(double value) {
  switch (value.toInt()) {
    case 0:
      return 'MON';
    case 1:
      return 'TUE';
    case 2:
      return 'WED';
    case 3:
      return 'THU';
    case 4:
      return 'FRI';
    case 5:
      return 'SAT';
    case 6:
      return 'SUN';
    default:
      return '';
  }
}