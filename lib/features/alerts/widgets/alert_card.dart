import 'package:flutter/material.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:intl/intl.dart';

class AlertCard extends StatelessWidget {
  final Alert alert;

  const AlertCard({
    super.key,
    required this.alert,
  });

  String _getAlertMessage() {
    switch (alert.type) {
      case AlertType.temperature:
        return 'Temperature: ${alert.value.toStringAsFixed(1)}°C';
      case AlertType.pulseRate:
        return 'Pulse Rate: ${alert.value.toStringAsFixed(0)} BPM';
      case AlertType.motion:
        return 'Abnormal Motion Detected';
      case AlertType.battery:
        return 'Battery Level: ${alert.value.toStringAsFixed(0)}%';
    }
  }

  IconData _getAlertIcon() {
    switch (alert.type) {
      case AlertType.temperature:
        return Icons.thermostat;
      case AlertType.pulseRate:
        return Icons.favorite;
      case AlertType.motion:
        return Icons.running_with_errors;
      case AlertType.battery:
        return Icons.battery_alert;
    }
  }

  String _formatTimestamp() {
    final now = DateTime.now();
    final difference = now.difference(alert.timestamp);

    if (difference.inDays == 0) {
      // Today: Show time only
      return 'Today ${DateFormat.jm().format(alert.timestamp)}';
    } else if (difference.inDays == 1) {
      // Yesterday: Show "Yesterday" and time
      return 'Yesterday ${DateFormat.jm().format(alert.timestamp)}';
    } else if (difference.inDays < 7) {
      // Within a week: Show day name and time
      return DateFormat('EEEE, jm').format(alert.timestamp);
    } else {
      // Older: Show full date and time
      return DateFormat('MMM d, y, jm').format(alert.timestamp);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(_getAlertIcon(), color: theme.primaryColor),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        alert.cattleName ?? 'Unknown',
                        style: theme.textTheme.titleMedium,
                      ),
                      Text(
                        'ID: ${alert.tagId}',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Text(
                  _formatTimestamp(),
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              _getAlertMessage(),
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
