import 'package:cattle_health/features/cattle/models/telemetry_data.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import 'package:cattle_health/features/cattle/widgets/live_metrics_chart.dart';
import 'package:cattle_health/features/cattle/providers/telemetry_provider.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';
import 'package:cattle_health/features/cattle/widgets/metrics_chart.dart';
import 'package:cattle_health/features/cattle/services/socket_service.dart';

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
  late TelemetryProvider _telemetryProvider;

  @override
  void initState() {
    super.initState();
    _telemetryProvider = Provider.of<TelemetryProvider>(context, listen: false);
    final authState = context.read<AuthBloc>().state;

    // Handle the auth state properly using pattern matching
    authState.maybeWhen(
      authenticated: (user) {
        _telemetryProvider.startMonitoring(widget.cattleId, user.userId);
      },
      orElse: () {
        // Handle unauthenticated state or show error
        Navigator.of(context).pop(); // Return to previous screen if not authenticated
      },
    );
  }

  @override
  void dispose() {
    _telemetryProvider.stopMonitoring(widget.cattleId);
    super.dispose();
  }

  Widget _buildConnectionStatus(SocketConnectionState state) {
    Color color;
    String text;
    IconData icon;

    switch (state) {
      case SocketConnectionState.connected:
        color = Colors.green;
        text = 'Connected';
        icon = Icons.check_circle;
        break;
      case SocketConnectionState.connecting:
        color = Colors.orange;
        text = 'Connecting...';
        icon = Icons.sync;
        break;
      case SocketConnectionState.disconnected:
        color = Colors.red;
        text = 'Disconnected';
        icon = Icons.error_outline;
        break;
      case SocketConnectionState.error:
        color = Colors.red;
        text = 'Connection Error';
        icon = Icons.error;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _getTemperatureData(TelemetryData? telemetry) {
    if (telemetry == null) return [];
    return [FlSpot(0, telemetry.temperature)];
  }

  List<FlSpot> _getHeartRateData(TelemetryData? telemetry) {
    if (telemetry == null) return [];
    return [FlSpot(0, telemetry.heartRate)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Telemetry'),
        actions: [
          Consumer<TelemetryProvider>(
            builder: (context, provider, _) {
              if (provider.connectionState == SocketConnectionState.disconnected ||
                  provider.connectionState == SocketConnectionState.error) {
                return IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => provider.reconnect(),
                  tooltip: 'Reconnect',
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<TelemetryProvider>(
          builder: (context, provider, _) {
            final telemetry = provider.latestTelemetry;
            final error = provider.error;

            if (error != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      error,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Theme.of(context).colorScheme.error,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () => provider.reconnect(),
                      icon: const Icon(Icons.refresh),
                      label: const Text('Try Again'),
                    ),
                  ],
                ),
              );
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        _buildConnectionStatus(provider.connectionState),
                        const SizedBox(width: 12),
                        Text(
                          'Updates every 5 seconds',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  if (provider.connectionState == SocketConnectionState.connected) ...[
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
                                  const Spacer(),
                                  if (telemetry != null)
                                    Text(
                                      '${telemetry.temperature.toStringAsFixed(1)}°C',
                                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
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
                                    data: _getTemperatureData(telemetry),
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
                                  const Spacer(),
                                  if (telemetry != null)
                                    Text(
                                      '${telemetry.heartRate.toStringAsFixed(0)} BPM',
                                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
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
                                    data: _getHeartRateData(telemetry),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
