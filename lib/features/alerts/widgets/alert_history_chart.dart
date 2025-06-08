import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';
import 'package:cattle_health/features/cattle/widgets/metrics_chart.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';

class AlertHistoryChart extends StatelessWidget {
  final Alert alert;

  const AlertHistoryChart({
    super.key,
    required this.alert,
  });

  List<FlSpot> _getSpots() {
    if (alert.recentTelemetry.isEmpty) return [];

    // Sort telemetry by timestamp in ascending order
    final sortedTelemetry = List.of(alert.recentTelemetry)
      ..sort((a, b) => a.timestamp.compareTo(b.timestamp));

    // Calculate minutes ago for each reading
    final latestTimestamp = sortedTelemetry.last.timestamp;
    return sortedTelemetry.map((entry) {
      final minutesAgo = (latestTimestamp - entry.timestamp) ~/ (60 * 1000);
      final value = switch (alert.type) {
        AlertType.temperature => entry.temperature,
        AlertType.pulseRate => entry.pulseRate,
        AlertType.motion => entry.motion,
        AlertType.battery => entry.battery,
      };
      return FlSpot(minutesAgo.toDouble(), value);
    }).toList();
  }

  MetricType _getMetricType() {
    return switch (alert.type) {
      AlertType.temperature => MetricType.temperature,
      AlertType.pulseRate => MetricType.pulseRate,
      AlertType.motion => MetricType.motion,
      AlertType.battery => MetricType.motion, // Using motion type for now
    };
  }

  @override
  Widget build(BuildContext context) {
    final spots = _getSpots();
    if (spots.length < 2) {  // Need at least 2 points for a line
      return const Center(
        child: Text('No historical data available'),
      );
    }

    return MetricsChart(
      metricType: _getMetricType(),
      data: spots.reversed.toList(),  // Show newest data on the right
      timeRange: TimeRange.day, // Since we're showing recent data
      height: 180,  // Fixed height for consistency
    );
  }
}
