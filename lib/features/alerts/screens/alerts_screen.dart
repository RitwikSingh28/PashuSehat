import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    Alert(
      id: '5',
      cattleId: 'C004',
      cattleName: 'Shiva',
      tagId: 'TAG004',
      timestamp: DateTime.now().subtract(const Duration(days: 2)),
      type: AlertType.pulseRate,
      value: 92,
    ),
  ];

  List<Alert> get _filteredAlerts {
    if (_selectedType == null) return _mockAlerts;
    return _mockAlerts.where((alert) => alert.type == _selectedType).toList();
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
          body: ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemCount: _filteredAlerts.length,
            itemBuilder: (context, index) {
              final alert = _filteredAlerts[index];
              return InkWell(
                onTap: () {
                  context.go(RouteNames.getAlertDetailsPath(alert.id));
                },
                child: AlertCard(alert: alert),
              );
            },
          ),
        ),
      ),
    );
  }
}
