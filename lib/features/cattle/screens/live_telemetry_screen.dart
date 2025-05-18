import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/features/cattle/widgets/metrics_chart.dart';
import 'package:cattle_health/features/cattle/widgets/live_metrics_chart.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';

class LiveTelemetryScreen extends StatefulWidget {
  final String cattleId;

  const LiveTelemetryScreen({
    super.key,
    required this.cattleId,
  });

  @override
  State<LiveTelemetryScreen> createState() => _LiveTelemetryScreenState();
}

class _LiveTelemetryScreenState extends State<LiveTelemetryScreen> {
  final List<FlSpot> _temperatureData = [];
  final List<FlSpot> _pulseRateData = [];
  Timer? _updateTimer;
  int _timeIndex = 0;

  @override
  void initState() {
    super.initState();
    _startUpdating();
  }

  @override
  void dispose() {
    _updateTimer?.cancel();
    super.dispose();
  }

  void _startUpdating() {
    // Update every 5 seconds
    _updateTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        // Add mock data points
        _addDataPoint();
        // Keep only last 12 points (1 minute of data)
        if (_temperatureData.length > 12) {
          _temperatureData.removeAt(0);
          _pulseRateData.removeAt(0);
          // Adjust x-values
          _adjustDataPoints(_temperatureData);
          _adjustDataPoints(_pulseRateData);
        }
      });
    });
  }

  void _adjustDataPoints(List<FlSpot> data) {
    for (int i = 0; i < data.length; i++) {
      data[i] = FlSpot(i.toDouble(), data[i].y);
    }
  }

  void _addDataPoint() {
    // Mock data generation
    _temperatureData.add(FlSpot(
      _timeIndex.toDouble(),
      38.5 + (DateTime.now().millisecond % 10) / 10,
    ));
    _pulseRateData.add(FlSpot(
      _timeIndex.toDouble(),
      72 + (DateTime.now().millisecond % 10),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Telemetry'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 12,
                            color: Colors.green.shade700,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Live',
                            style: TextStyle(
                              color: Colors.green.shade700,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Updates every 5 seconds',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            const Icon(Icons.thermostat),
                            const SizedBox(width: 8),
                            Text(
                              'Temperature (°C)',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: AspectRatio(
                          aspectRatio: 1.70,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LiveMetricsChart(
                              metricType: MetricType.temperature,
                              data: _temperatureData,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            const Icon(Icons.favorite),
                            const SizedBox(width: 8),
                            Text(
                              'Pulse Rate (BPM)',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: AspectRatio(
                          aspectRatio: 1.70,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LiveMetricsChart(
                              metricType: MetricType.pulseRate,
                              data: _pulseRateData,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
