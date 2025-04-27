import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/routes/route_names.dart';
import 'package:cattle_health/features/cattle/models/cattle_model.dart';

class CattleListScreen extends StatelessWidget {
  const CattleListScreen({super.key});

  // TODO: Replace with actual data from a repository
  List<Cattle> get _mockCattleList => [
    Cattle(
      id: 'C001',
      name: 'Gauri',
      tagId: 'TAG001',
      dateOfBirth: DateTime.now().subtract(const Duration(days: 60)),
      notes: [],
    ),
    Cattle(
      id: 'C002',
      name: 'Lakshmi',
      tagId: 'TAG002',
      dateOfBirth: DateTime.now().subtract(const Duration(days: 45)),
      notes: [],
    ),
    Cattle(
      id: 'C003',
      name: 'Nandi',
      tagId: 'TAG003',
      dateOfBirth: DateTime.now().subtract(const Duration(days: 30)),
      notes: [],
    ),
    Cattle(
      id: 'C004',
      name: 'Shiva',
      tagId: 'TAG004',
      dateOfBirth: DateTime.now().subtract(const Duration(days: 75)),
      notes: [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cattle List'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      body: ListView.builder(
        itemCount: _mockCattleList.length,
        itemBuilder: (context, index) {
          final cattle = _mockCattleList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.pets),
              ),
              title: Text(cattle.name),
              subtitle: Text('ID: ${cattle.tagId}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                context.go(RouteNames.getCattleDetailsPath(cattle.id));
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.go('/cattle/add');
        },
        label: const Text('Add Cattle'),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
