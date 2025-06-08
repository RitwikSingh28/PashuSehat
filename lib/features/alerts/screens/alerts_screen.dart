import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/alerts/bloc/alert_bloc.dart';
import 'package:cattle_health/features/alerts/bloc/alert_event.dart';
import 'package:cattle_health/features/alerts/bloc/alert_state.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';
import 'package:cattle_health/features/alerts/widgets/alert_card.dart';
import 'package:cattle_health/routes/route_names.dart';
import 'package:cattle_health/core/widgets/app_shell.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  AlertType? _selectedType;


  List<Alert> _filterAlerts(List<Alert> alerts) {
    if (_selectedType == null) return alerts;
    return alerts.where((alert) => alert.type == _selectedType).toList();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: AlertType.values.length + 1, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _selectedType = _tabController.index == 0
            ? null
            : AlertType.values[_tabController.index - 1];
      });
    });

    // Fetch alerts when screen loads
    context.read<AlertBloc>().add(const AlertEvent.fetchUserAlerts());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String _getTabLabel(AlertType? type) {
    if (type == null) return 'All';
    switch (type) {
      case AlertType.temperature:
        return 'Heat';
      case AlertType.pulseRate:
        return 'Pulse';
      case AlertType.motion:
        return 'Motion';
      case AlertType.battery:
        return 'Battery';
    }
  }

  IconData _getTabIcon(AlertType? type) {
    if (type == null) return Icons.all_inbox;
    switch (type) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: const Text('Alerts'),
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => scaffoldKey.currentState?.openDrawer(),
                ),
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      icon: Icon(_getTabIcon(null)),
                      text: _getTabLabel(null),
                    ),
                    ...AlertType.values.map((type) => Tab(
                      icon: Icon(_getTabIcon(type)),
                      text: _getTabLabel(type),
                    )).toList(),
                  ],
                ),
              ),
            ];
          },
          body: BlocConsumer<AlertBloc, AlertState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (alerts, status, startDate, endDate) {
                  final filteredAlerts = _filterAlerts(alerts);
                  if (filteredAlerts.isEmpty) {
                    return Center(
                      child: Text(
                        'No alerts found',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    );
                  }
                  return RefreshIndicator(
                    onRefresh: () async {
                      context.read<AlertBloc>().add(const AlertEvent.fetchUserAlerts());
                    },
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      itemCount: filteredAlerts.length,
                      itemBuilder: (context, index) {
                        final alert = filteredAlerts[index];
                        return InkWell(
                          onTap: () {
                            context.go(
                              RouteNames.getAlertDetailsPath(alert.id),
                              extra: alert,
                            );
                          },
                          child: AlertCard(alert: alert),
                        );
                      },
                    ),
                  );
                },
                error: (message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(message),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<AlertBloc>().add(const AlertEvent.fetchUserAlerts());
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
                acknowledging: () => const Center(child: CircularProgressIndicator()),
                acknowledged: (alert) => const SizedBox(), // This state is handled in details screen
              );
            },
          ),
        ),
      ),
    );
  }
}
