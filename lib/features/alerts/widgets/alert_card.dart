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
        return 'Temperature: ${alert.value.toStringAsFixed(1)}°F';
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
      return 'Today ${DateFormat('h:mm a').format(alert.timestamp)}';
    } else if (difference.inDays == 1) {
      // Yesterday: Show "Yesterday" and time
      return 'Yesterday ${DateFormat('h:mm a').format(alert.timestamp)}';
    } else if (difference.inDays < 7) {
      // Within a week: Show day name and time
      return DateFormat('E, h:mm a').format(alert.timestamp);
    } else {
      // Older: Show full date and time
      return DateFormat('MMM d, h:mm a').format(alert.timestamp);
    }
  }

  Color _getAlertColor(ThemeData theme) {
    if (alert.status == AlertStatus.acknowledged) {
      return theme.colorScheme.surfaceVariant;
    }

    // For unacknowledged alerts, color based on severity
    switch (alert.severity) {
      case AlertSeverity.high:
        return Color(0xFFFDE8E8);  // Light red background
      case AlertSeverity.medium:
        return Color(0xFFFEF3C7);  // Light amber background
      case AlertSeverity.low:
        return Color(0xFFE8F4FF);  // Light blue background
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: alert.status == AlertStatus.new_ ? 2 : 1,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: _getAlertColor(theme),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  _getAlertIcon(),
                  color: alert.severity == AlertSeverity.high
                      ? Color(0xFFDC2626)  // Red for high severity
                      : theme.primaryColor,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        alert.cattleName ?? 'Unknown',
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: alert.severity == AlertSeverity.high
                              ? Color(0xFFDC2626)  // Red for high severity
                              : null,
                        ),
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
