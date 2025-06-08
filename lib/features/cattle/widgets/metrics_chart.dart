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
  final double? height;

  const MetricsChart({
    super.key,
    required this.metricType,
    required this.data,
    required this.timeRange,
    this.height,
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

  (double, double) _getYAxisRange() {
    if (data.isEmpty) return (0, 1);  // Default range if no data

    switch (metricType) {
      case MetricType.temperature:
        // Fixed range for temperature (90-110°F)
        return (90, 110);
      case MetricType.pulseRate:
        // Dynamic range for pulse rate with padding
        final minY = data.map((e) => e.y).reduce((a, b) => a < b ? a : b);
        final maxY = data.map((e) => e.y).reduce((a, b) => a > b ? a : b);
        return (minY - 5, maxY + 5);
      case MetricType.motion:
        // Motion data is typically 0-1
        return (0, 1);
    }
  }

  String get _unitLabel {
    switch (metricType) {
      case MetricType.temperature:
        return 'Temperature (°F)';
      case MetricType.pulseRate:
        return 'Pulse Rate (BPM)';
      case MetricType.motion:
        return 'Motion';
    }
  }

  String get _timeLabel => 'Minutes ago';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _title,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: height ?? 200, // Default height if not provided
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: true),
              lineTouchData: LineTouchData(
                enabled: true,
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: theme.colorScheme.surface,
                  tooltipRoundedRadius: 8,
                  tooltipBorder: BorderSide(
                    color: theme.colorScheme.outline,
                    width: 1,
                  ),
                  tooltipPadding: const EdgeInsets.all(8),
                  getTooltipItems: (List<LineBarSpot> touchedSpots) {
                    return touchedSpots.map((spot) {
                      return LineTooltipItem(
                        '${spot.y.toStringAsFixed(1)}${metricType == MetricType.temperature ? '°F' : ''}',
                        TextStyle(color: theme.colorScheme.onSurface),
                      );
                    }).toList();
                  },
                ),
              ),
              minY: _getYAxisRange().$1,
              minX: 0,  // 0 minutes ago (now)
              maxX: 10, // Up to 10 minutes ago
              maxY: _getYAxisRange().$2,
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
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
                    reservedSize: 22,
                    getTitlesWidget: (value, meta) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          (10 - value.toInt()).toString(),
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
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _unitLabel,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.textTheme.bodyMedium?.color,
              ),
            ),
            const SizedBox(width: 16),
            Container(height: 12, width: 1, color: theme.dividerColor),
            const SizedBox(width: 16),
            Text(
              _timeLabel,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.textTheme.bodyMedium?.color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
