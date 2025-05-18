import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:cattle_health/routes/route_names.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';
import 'package:cattle_health/features/cattle/widgets/metrics_chart.dart';
import 'package:cattle_health/core/widgets/time_range_selector.dart';
import 'package:cattle_health/core/widgets/app_shell.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_bloc.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_event.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_state.dart';

class CattleDetailsScreen extends StatefulWidget {
  final String id;

  const CattleDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  State<CattleDetailsScreen> createState() => _CattleDetailsScreenState();
}

class _CattleDetailsScreenState extends State<CattleDetailsScreen> {
  TimeRange _selectedRange = TimeRange.day;

  @override
  void initState() {
    super.initState();
    context.read<CattleBloc>().add(
          CattleEvent.loadSingleCattle(widget.id),
        );
  }

  // TODO: Replace with actual data
  List<FlSpot> _getMockData(MetricType type) {
    switch (type) {
      case MetricType.temperature:
        return [
          const FlSpot(0, 38.5),
          const FlSpot(4, 38.7),
          const FlSpot(8, 39.1),
          const FlSpot(12, 38.9),
          const FlSpot(16, 38.6),
          const FlSpot(20, 38.8),
          const FlSpot(24, 38.7),
        ];
      case MetricType.pulseRate:
        return [
          const FlSpot(0, 72),
          const FlSpot(4, 75),
          const FlSpot(8, 78),
          const FlSpot(12, 76),
          const FlSpot(16, 74),
          const FlSpot(20, 73),
          const FlSpot(24, 72),
        ];
      case MetricType.motion:
        return [
          const FlSpot(0, 0.5),
          const FlSpot(4, 0.8),
          const FlSpot(8, 1.2),
          const FlSpot(12, 0.9),
          const FlSpot(16, 0.7),
          const FlSpot(20, 0.6),
          const FlSpot(24, 0.5),
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CattleBloc, CattleState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error.message),
                backgroundColor: Colors.red,
              ),
            );
          },
          updated: (cattle) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Note added successfully')),
            );
            context.read<CattleBloc>().add(
                  CattleEvent.loadSingleCattle(widget.id),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          singleLoaded: (cattle) => _buildContent(cattle),
          orElse: () => const Scaffold(
            body: Center(child: Text('Cattle not found')),
          ),
        );
      },
    );
  }

  Widget _buildContent(Cattle cattle) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cattle Details'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'General'),
              Tab(text: 'Notes'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildGeneralTab(Theme.of(context), cattle),
            _buildNotesTab(Theme.of(context), cattle),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            context.push(
              RouteNames.getAddNotePath(widget.id),
            ).then((added) {
              if (added == true) {
                context.read<CattleBloc>().add(
                      CattleEvent.loadSingleCattle(widget.id),
                    );
              }
            });
          },
          label: const Text('Add Note'),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildGeneralTab(ThemeData theme, Cattle cattle) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basic Information Card
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Basic Information',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow('Name', cattle.name),
                  _buildInfoRow('Tag ID', cattle.tagId),
                  _buildInfoRow(
                    'Age Group',
                    cattle.ageGroup.toString().split('.').last.toUpperCase(),
                  ),
                  _buildInfoRow(
                    'Gender',
                    cattle.gender.toString().split('.').last.toUpperCase(),
                  ),
                  _buildInfoRow(
                    'Date of Birth',
                    cattle.dateOfBirth.toString().split(' ')[0],
                  ),
                  _buildInfoRow('Breed', cattle.breed),
                  if (cattle.governmentId != null)
                    _buildInfoRow('Government ID', cattle.governmentId!),
                ],
              ),
            ),
          ),

          // Metrics Section
          Card(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Metrics',
                          style: theme.textTheme.titleLarge,
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton.icon(
                          onPressed: () {
                            context.push(
                              RouteNames.getLiveTelemetryPath(widget.id),
                            );
                          },
                          icon: const Icon(Icons.online_prediction),
                          label: const Text('View Live Data'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: TimeRangeSelector(
                            selectedRange: _selectedRange,
                            onRangeChanged: (TimeRange newRange) {
                              setState(() {
                                _selectedRange = newRange;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                MetricsChart(
                  metricType: MetricType.temperature,
                  data: _getMockData(MetricType.temperature),
                  timeRange: _selectedRange,
                ),
                const Divider(),
                MetricsChart(
                  metricType: MetricType.pulseRate,
                  data: _getMockData(MetricType.pulseRate),
                  timeRange: _selectedRange,
                ),
                const Divider(),
                MetricsChart(
                  metricType: MetricType.motion,
                  data: _getMockData(MetricType.motion),
                  timeRange: _selectedRange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotesTab(ThemeData theme, Cattle cattle) {
    if (cattle.notes.isEmpty) {
      return const Center(
        child: Text('No notes added yet'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: cattle.notes.length,
      itemBuilder: (context, index) {
        final note = cattle.notes[index];
        return Card(
          child: ListTile(
            title: Text(note),
            dense: true,
          ),
        );
      },
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(value),
        ],
      ),
    );
  }

  Future<void> _showAddNoteDialog() {
    final noteController = TextEditingController();

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Note'),
        content: TextField(
          controller: noteController,
          decoration: const InputDecoration(
            hintText: 'Enter your note here',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              if (noteController.text.isNotEmpty) {
                context.read<CattleBloc>().add(
                      CattleEvent.addNote(
                        cattleId: widget.id,
                        note: noteController.text,
                      ),
                    );
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
