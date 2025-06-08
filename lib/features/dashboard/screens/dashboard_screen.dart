import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/alerts/bloc/alert_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_event.dart';
import 'package:cattle_health/features/alerts/bloc/alert_state.dart';
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

  @override
  void initState() {
    super.initState();
    _fetchAlerts();
  }

  void _fetchAlerts() {
    if (_showRecent) {
      context.read<AlertBloc>().add(
            FetchUserAlerts(
              status: AlertStatus.new_,
              startDate: DateTime.now().subtract(const Duration(hours: 24)),
              endDate: DateTime.now(),
            ),
          );
    } else {
      context.read<AlertBloc>().add(
            FetchUserAlerts(
              status: AlertStatus.new_,
            ),
          );
    }
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
                        _fetchAlerts();
                      },
                    ),
                    const SizedBox(width: 8),
                    FilterChip(
                      label: const Text('All Time'),
                      selected: !_showRecent,
                      onSelected: (value) {
                        setState(() {
                          _showRecent = !value;
                        });
                        _fetchAlerts();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<AlertBloc, AlertState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: CircularProgressIndicator()),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (alerts, filterStatus, startDate, endDate) {
                    if (alerts.isEmpty) {
                      return Center(
                        child: Text(
                          'No alerts found',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.textTheme.bodySmall?.color,
                          ),
                        ),
                      );
                    }

                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: alerts.length,
                            itemBuilder: (context, index) {
                              final alert = alerts[index];
                              return InkWell(
                                onTap: () {
                                  context.go(
                                    RouteNames.getAlertDetailsPath(alert.id),
                                    extra: alert);
                                },
                                child: AlertCard(alert: alert),
                              );
                            },
                          ),
                        ),
                        if (alerts.length > 3)
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
                    );
                  },
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Error: $message',
                          style: theme.textTheme.bodyLarge?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _fetchAlerts,
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                  acknowledging: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  acknowledged: (alert) => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
