import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';
import 'package:cattle_health/features/cattle/widgets/metrics_chart.dart';

class LiveMetricsChart extends StatelessWidget {
  final MetricType metricType;
  final List<FlSpot> data;

  const LiveMetricsChart({
    super.key,
    required this.metricType,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LineChart(
      LineChartData(
        gridData: FlGridData(show: true),
        minX: 0,
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: theme.colorScheme.surface,
            tooltipRoundedRadius: 8,
            tooltipBorder: BorderSide(
              color: theme.colorScheme.outline,
              width: 1,
            ),
          ),
        ),
        maxX: 11,
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 35,
              getTitlesWidget: (value, meta) {
                return Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text(
                    value.toStringAsFixed(1),
                    style: theme.textTheme.bodySmall,
                  ),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 25,
              getTitlesWidget: (value, meta) {
                return Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    '${(value.toInt() * 5)}s',
                    style: theme.textTheme.bodySmall,
                  ),
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
            barWidth: 2,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: theme.primaryColor.withOpacity(0.1),
            ),
          ),
        ],
        minY: data.isEmpty ? 0 : (data.map((e) => e.y).reduce((a, b) => a < b ? a : b) - 0.5).clamp(0, double.infinity),
        maxY: data.isEmpty ? 1 : (data.map((e) => e.y).reduce((a, b) => a > b ? a : b) + 0.5).clamp(0, double.infinity),
        clipData: FlClipData.all(),
      ),
    );
  }
}
