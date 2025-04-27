import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';

enum MetricType {
  temperature,
  pulseRate,
  motion,
}

class MetricsChart extends StatelessWidget {
  final MetricType metricType;
  final List<FlSpot> data;
  final TimeRange timeRange;

  const MetricsChart({
    super.key,
    required this.metricType,
    required this.data,
    required this.timeRange,
  });

  String get _title {
    switch (metricType) {
      case MetricType.temperature:
        return 'Temperature';
      case MetricType.pulseRate:
        return 'Pulse Rate';
      case MetricType.motion:
        return 'Motion';
    }
  }

  String get _yAxisLabel {
    switch (metricType) {
      case MetricType.temperature:
        return '°C';
      case MetricType.pulseRate:
        return 'BPM';
      case MetricType.motion:
        return 'Motion';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: true),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          '${value.toStringAsFixed(1)}$_yAxisLabel',
                          style: theme.textTheme.bodySmall,
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        String label;
                        switch (timeRange) {
                          case TimeRange.day:
                            label = '${value.toInt()}h';
                            break;
                          case TimeRange.fifteenDays:
                          case TimeRange.thirtyDays:
                            label = '${value.toInt()}d';
                            break;
                        }
                        return Text(
                          label,
                          style: theme.textTheme.bodySmall,
                        );
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: true),
                lineBarsData: [
                  LineChartBarData(
                    spots: data,
                    isCurved: true,
                    color: theme.primaryColor,
                    barWidth: 3,
                    dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      color: theme.primaryColor.withOpacity(0.1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
