import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../models/workout.dart';

class SummaryPage extends StatelessWidget {
  final List<Workout> workouts;

  const SummaryPage({Key? key, required this.workouts}) : super(key: key);

  Map<String, int> _getWorkoutCountPerCategory() {
    Map<String, int> categoryCount = {};
    for (var workout in workouts) {
      categoryCount[workout.category] =
          (categoryCount[workout.category] ?? 0) + 1;
    }
    return categoryCount;
  }

  List<BarChartGroupData> _createBarGroups(Map<String, int> dataMap) {
    int index = 0;
    return dataMap.entries.map((entry) {
      return BarChartGroupData(
        x: index++,
        barRods: [
          BarChartRodData(
            toY: entry.value.toDouble(),
            color: Colors.red[300],
            width: 20,
            borderRadius: BorderRadius.circular(4),
          )
        ],
        showingTooltipIndicators: [0],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    if (workouts.isEmpty) {
    return Scaffold(
      appBar: AppBar(title: Text('Workout Summary')),
      body: Center(
        child: Text('No data to display!', style: TextStyle(fontSize: 24, color: Colors.red[400])),
      ),
    );
  }
    final dataMap = _getWorkoutCountPerCategory();
    final barGroups = _createBarGroups(dataMap);
    final categories = dataMap.keys.toList();

    return Scaffold(
      appBar: AppBar(title: Text('Workout Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: (dataMap.values.reduce((a, b) => a > b ? a : b) + 1).toDouble(),
            barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                tooltipBgColor: Colors.black87,
                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                  return BarTooltipItem(
                    '${categories[group.x]}: ${rod.toY.toInt()}',
                    TextStyle(color: Colors.white),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true, reservedSize: 28),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        categories[value.toInt()],
                        style: TextStyle(fontSize: 12),
                      ),
                    );
                  },
                ),
              ),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            borderData: FlBorderData(show: false),
            barGroups: barGroups,
            gridData: FlGridData(show: false),
          ),
        ),
      ),
    );
  }
}
