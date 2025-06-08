import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_event.dart';
import 'package:cattle_health/features/alerts/bloc/alert_state.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:cattle_health/features/alerts/widgets/alert_history_chart.dart';
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
  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays == 0) {
      // Today: Show time only
      return DateFormat('h:mm a').format(timestamp);
    } else if (difference.inDays == 1) {
      // Yesterday: Show "Yesterday" and time
      return 'Yesterday ${DateFormat('h:mm a').format(timestamp)}';
    } else if (difference.inDays < 7) {
      // Within a week: Show day name and time
      return DateFormat('E, h:mm a').format(timestamp);
    }
    // Older: Show date and time
    return DateFormat('MMM d, h:mm a').format(timestamp);
  }

  String _getUnit() {
    switch (widget.alert.type) {
      case AlertType.temperature:
        return '°F';
      case AlertType.pulseRate:
        return 'BPM';
      case AlertType.motion:
        return 'Motion';
      case AlertType.battery:
        return '%';
    }
  }

  String _getReadingTitle() {
    switch (widget.alert.type) {
      case AlertType.temperature:
        return 'Temperature';
      case AlertType.pulseRate:
        return 'Pulse Rate';
      case AlertType.motion:
        return 'Motion';
      case AlertType.battery:
        return 'Battery';
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
      case AlertType.battery:
        return 'Battery Level History';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<AlertBloc, AlertState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          acknowledged: (alert) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Alert acknowledged successfully')),
            );
            Navigator.of(context).pop();
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isAcknowledging = state.maybeWhen(
          acknowledging: () => true,
          orElse: () => false,
        );

        return Scaffold(
          appBar: AppBar(
            title: const Text('Alert Details'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cattle',
                                  style: theme.textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  widget.alert.cattleName ?? 'Unknown',
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _getReadingTitle(),
                                  style: theme.textTheme.titleMedium,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${widget.alert.value.toStringAsFixed(1)} ${_getUnit()}',
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  _formatTimestamp(widget.alert.timestamp),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _getChartTitle(),
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        AlertHistoryChart(alert: widget.alert),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: widget.alert.status == AlertStatus.new_
              ? SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                      onPressed: isAcknowledging
                          ? null
                          : () {
                              context.read<AlertBloc>().add(
                                    AlertEvent.acknowledgeAlert(widget.alert.id),
                                  );
                            },
                      child: isAcknowledging
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            )
                          : const Text('Acknowledge Alert'),
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
