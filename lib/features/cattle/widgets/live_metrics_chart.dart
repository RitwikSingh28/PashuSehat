import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

enum LiveMetricType {
  temperature,
  pulseRate,
}

class LiveMetricsChart extends StatelessWidget {
  final LiveMetricType metricType;
  final List<FlSpot> data;

  const LiveMetricsChart({
    super.key,
    required this.metricType,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    final theme = Theme.of(context);
    final minY = data.map((e) => e.y).reduce((a, b) => a < b ? a : b);
    final maxY = data.map((e) => e.y).reduce((a, b) => a > b ? a : b);
    final yPadding = (maxY - minY) * 0.1; // 10% padding

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          horizontalInterval: _getYAxisInterval(minY, maxY),
          verticalInterval: 1,
        ),
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 50, // Increased for better alignment
              interval: _getYAxisInterval(minY, maxY),
              getTitlesWidget: (value, meta) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    _formatYAxisLabel(value),
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.right,
                  ),
                );
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              interval: 1,
              getTitlesWidget: (value, meta) {
                // Show minutes instead of seconds
                final minutes = value.toInt();
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    '${minutes}m',
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
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: theme.dividerColor,
            width: 1,
          ),
        ),
        minX: 0, // Start at 0 minutes
        maxX: (data.length - 1).toDouble(), // Show total duration in minutes
        minY: minY - yPadding,
        maxY: maxY + yPadding,
        lineBarsData: [
          LineChartBarData(
            spots: data,
            isCurved: true,
            color: _getLineColor(theme),
            barWidth: 2,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: _getLineColor(theme),
                  strokeWidth: 1,
                  strokeColor: theme.colorScheme.surface,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              color: _getLineColor(theme).withOpacity(0.15),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          enabled: true,
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: theme.colorScheme.surface,
            tooltipRoundedRadius: 8,
            tooltipBorder: BorderSide(
              color: theme.dividerColor,
              width: 1,
            ),
            tooltipPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            getTooltipItems: (touchedSpots) {
              return touchedSpots.map((spot) {
                return LineTooltipItem(
                  _formatTooltipValue(spot.y),
                  theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  Color _getLineColor(ThemeData theme) {
    switch (metricType) {
      case LiveMetricType.temperature:
        return Colors.orange;
      case LiveMetricType.pulseRate:
        return Colors.red;
    }
  }

  String _formatTooltipValue(double value) {
    switch (metricType) {
      case LiveMetricType.temperature:
        return '${value.toStringAsFixed(1)}°F';
      case LiveMetricType.pulseRate:
        return '${value.toStringAsFixed(0)} BPM';
    }
  }

  String _formatYAxisLabel(double value) {
    switch (metricType) {
      case LiveMetricType.temperature:
        return value.toStringAsFixed(1);
      case LiveMetricType.pulseRate:
        return value.toStringAsFixed(0);
    }
  }

  double _getYAxisInterval(double min, double max) {
    final range = max - min;
    switch (metricType) {
      case LiveMetricType.temperature:
        if (range <= 5) return 0.5;
        if (range <= 10) return 1.0;
        return 2.0;
      case LiveMetricType.pulseRate:
        if (range <= 20) return 2;
        if (range <= 50) return 5;
        return 10;
    }
  }
}
