import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:cattle_health/features/alerts/widgets/alert_card.dart';
import 'package:cattle_health/routes/route_names.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool _showRecent = true; // Toggle between 24h and all time

  // TODO: Replace with actual data from a repository
  final List<Alert> _mockAlerts = [
    // Recent alerts (within 24 hours)
    Alert(
      id: '1',
      cattleId: 'C001',
      cattleName: 'Gauri',
      tagId: 'TAG001',
      timestamp: DateTime.now().subtract(const Duration(hours: 1)),
      type: AlertType.temperature,
      value: 39.5,
    ),
    Alert(
      id: '2',
      cattleId: 'C002',
      cattleName: 'Lakshmi',
      tagId: 'TAG002',
      timestamp: DateTime.now().subtract(const Duration(hours: 3)),
      type: AlertType.pulseRate,
      value: 95,
    ),
    Alert(
      id: '3',
      cattleId: 'C003',
      cattleName: 'Nandi',
      tagId: 'TAG003',
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      type: AlertType.motion,
      value: 1.0,
    ),
    Alert(
      id: '4',
      cattleId: 'C001',
      cattleName: 'Gauri',
      tagId: 'TAG001',
      timestamp: DateTime.now().subtract(const Duration(hours: 8)),
      type: AlertType.temperature,
      value: 38.9,
    ),

    // Older alerts (beyond 24 hours)
    Alert(
      id: '5',
      cattleId: 'C004',
      cattleName: 'Shiva',
      tagId: 'TAG004',
      timestamp: DateTime.now().subtract(const Duration(days: 2)),
      type: AlertType.pulseRate,
      value: 92,
    ),
    Alert(
      id: '6',
      cattleId: 'C002',
      cattleName: 'Lakshmi',
      tagId: 'TAG002',
      timestamp: DateTime.now().subtract(const Duration(days: 3)),
      type: AlertType.motion,
      value: 1.0,
    ),
  ];

  List<Alert> get _filteredAlerts {
    if (_showRecent) {
      final cutoff = DateTime.now().subtract(const Duration(hours: 24));
      return _mockAlerts.where((alert) => alert.timestamp.isAfter(cutoff)).toList();
    }
    return _mockAlerts;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Alerts',
                  style: theme.textTheme.titleLarge,
                ),
                Row(
                  children: [
                    FilterChip(
                      label: const Text('24h'),
                      selected: _showRecent,
                      onSelected: (value) {
                        setState(() {
                          _showRecent = value;
                        });
                      },
                    ),
                    const SizedBox(width: 8),
                    FilterChip(
                      label: const Text('All'),
                      selected: !_showRecent,
                      onSelected: (value) {
                        setState(() {
                          _showRecent = !value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _filteredAlerts.length,
                    itemBuilder: (context, index) {
                      final alert = _filteredAlerts[index];
                      return InkWell(
                        onTap: () {
                          // Navigate to alert details
                          context.go(RouteNames.getAlertDetailsPath(alert.id));
                        },
                        child: AlertCard(alert: alert),
                      );
                    },
                  ),
                ),
                if (_mockAlerts.length > 3)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextButton(
                      onPressed: () {
                        context.go(RouteNames.alerts);
                      },
                      child: const Text('Show More'),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
