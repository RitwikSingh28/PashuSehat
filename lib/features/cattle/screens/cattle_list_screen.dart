import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_bloc.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_event.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_state.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';
import 'package:cattle_health/routes/route_names.dart';

class CattleListScreen extends StatefulWidget {
  const CattleListScreen({super.key});

  @override
  State<CattleListScreen> createState() => _CattleListScreenState();
}

class _CattleListScreenState extends State<CattleListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CattleBloc>().add(const CattleEvent.loadCattle());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cattle'),
      ),
      body: BlocBuilder<CattleBloc, CattleState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (cattle) => _buildCattleList(cattle),
            singleLoaded: (cattle) => _buildCattleList([cattle]),
            created: (cattle) => _buildCattleList([cattle]),
            updated: (cattle) => _buildCattleList([cattle]),
            deleted: () => const Center(child: Text('Cattle deleted')),
            error: (error) => Center(child: Text(error.message)),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go(RouteNames.addCattle),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCattleList(List<Cattle> cattleList) {
    if (cattleList.isEmpty) {
      return const Center(child: Text('No cattle found'));
    }

    return ListView.builder(
      itemCount: cattleList.length,
      itemBuilder: (context, index) {
        final cattle = cattleList[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(cattle.name[0].toUpperCase()),
            ),
            title: Text(cattle.name),
            subtitle: Text('Tag ID: ${cattle.tagId}'),
            trailing: Text(cattle.ageGroup.toString().split('.').last),
            onTap: () => context.go(
              RouteNames.getCattleDetailsPath(cattle.cattleId),
            ),
          ),
        );
      },
    );
  }
}
