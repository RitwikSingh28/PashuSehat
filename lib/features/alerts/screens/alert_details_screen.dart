import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_event.dart';
import 'package:cattle_health/features/alerts/bloc/alert_state.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
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
    return DateFormat('MMM d, y, h:mm a').format(timestamp);
  }

  String _getUnit() {
    switch (widget.alert.type) {
      case AlertType.temperature:
        return '°C';
      case AlertType.pulseRate:
        return 'BPM';
      case AlertType.motion:
        return 'Motion';
      case AlertType.battery:
        return '%';
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
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cattle Information',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.alert.cattleName ?? 'Unknown',
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          'Tag ID: ${widget.alert.tagId}',
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
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
                          'Alert Details',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Value: ${widget.alert.value} ${_getUnit()}',
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          'Time: ${_formatTimestamp(widget.alert.timestamp)}',
                          style: theme.textTheme.bodyMedium,
                        ),
                        if (widget.alert.threshold != null) ...[
                          const SizedBox(height: 8),
                          Text(
                            'Threshold: ${widget.alert.threshold?.min ?? '-'} - ${widget.alert.threshold?.max ?? '-'} ${_getUnit()}',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                        if (widget.alert.status == AlertStatus.acknowledged) ...[
                          const SizedBox(height: 16),
                          Text(
                            'Acknowledged by: ${widget.alert.acknowledgedBy}',
                            style: theme.textTheme.bodyMedium,
                          ),
                          if (widget.alert.acknowledgedAt != null)
                            Text(
                              'Acknowledged at: ${_formatTimestamp(widget.alert.acknowledgedAt!)}',
                              style: theme.textTheme.bodyMedium,
                            ),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // TODO: Add chart widget here
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
                        SizedBox(
                          height: 200,
                          child: Center(
                            child: Text(
                              'Chart will be displayed here',
                              style: theme.textTheme.bodyMedium,
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
          bottomNavigationBar: widget.alert.status == AlertStatus.newAlert
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
