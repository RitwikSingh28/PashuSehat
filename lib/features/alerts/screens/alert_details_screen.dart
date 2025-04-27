import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';
import 'package:intl/intl.dart';

class AlertDetailsScreen extends StatefulWidget {
  final Alert alert;

  const AlertDetailsScreen({
    super.key,
    required this.alert,
  });

  @override
  State<AlertDetailsScreen> createState() => _AlertDetailsScreenState();
}

class _AlertDetailsScreenState extends State<AlertDetailsScreen> {
  TimeRange _selectedRange = TimeRange.day;

  // TODO: Replace with actual data from repository
  List<FlSpot> _getMockChartData() {
    final now = DateTime.now();
    final points = <FlSpot>[];

    int numberOfPoints;
    Duration interval;

    switch (_selectedRange) {
      case TimeRange.day:
        numberOfPoints = 24; // Hourly for a day
        interval = const Duration(hours: 1);
        break;
      case TimeRange.fifteenDays:
        numberOfPoints = 15; // Daily for 15 days
        interval = const Duration(days: 1);
        break;
      case TimeRange.thirtyDays:
        numberOfPoints = 30; // Daily for 30 days
        interval = const Duration(days: 1);
        break;
    }

    // Generate mock data based on alert type
    for (int i = 0; i < numberOfPoints; i++) {
      double baseValue = widget.alert.value;
      double variation = (i % 3 - 1) * 0.5; // Creates some variation in the data
      points.add(FlSpot(i.toDouble(), baseValue + variation));
    }

    return points;
  }

  String _getYAxisLabel() {
    switch (widget.alert.type) {
      case AlertType.temperature:
        return '°C';
      case AlertType.pulseRate:
        return 'BPM';
      case AlertType.motion:
        return 'Motion';
    }
  }

  String _getChartTitle() {
    switch (widget.alert.type) {
      case AlertType.temperature:
        return 'Temperature History';
      case AlertType.pulseRate:
        return 'Pulse Rate History';
      case AlertType.motion:
        return 'Motion Activity';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Alert Info Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.alert.cattleName,
                      style: theme.textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8),
                    _InfoRow(
                      label: 'Cattle ID',
                      value: widget.alert.cattleId,
                    ),
                    _InfoRow(
                      label: 'Tag ID',
                      value: widget.alert.tagId,
                    ),
                    _InfoRow(
                      label: 'Alert Time',
                      value: DateFormat('MMM d, y, h:mm a')
                          .format(widget.alert.timestamp),
                    ),
                    _InfoRow(
                      label: 'Value',
                      value: '${widget.alert.value}${_getYAxisLabel()}',
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Time Range Selection
            Center(
              child: TimeRangeSelector(
                selectedRange: _selectedRange,
                onRangeChanged: (TimeRange newRange) {
                  setState(() {
                    _selectedRange = newRange;
                  });
                },
              ),
            ),

            const SizedBox(height: 24),

            // Chart
            Text(
              _getChartTitle(),
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
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
                      spots: _getMockChartData(),
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
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.textTheme.bodySmall?.color,
            ),
          ),
          Text(
            value,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
