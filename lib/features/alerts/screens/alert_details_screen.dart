import 'package:flutter/material.dart';
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
  bool _isAcknowledging = false;

  Future<void> _acknowledgeAlert() async {
    setState(() {
      _isAcknowledging = true;
    });

    try {
      // TODO: Implement alert acknowledgment
      await Future.delayed(const Duration(seconds: 1)); // Simulated API call
      if (!mounted) return;
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to acknowledge alert'),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isAcknowledging = false;
        });
      }
    }
  }

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
                  onPressed: _isAcknowledging ? null : _acknowledgeAlert,
                  child: _isAcknowledging
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
  }
}
