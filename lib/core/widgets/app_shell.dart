import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/bloc/auth_event.dart';
import 'package:cattle_health/features/auth/bloc/auth_state.dart';
import 'package:cattle_health/routes/route_names.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class AppShell extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  const AppShell({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      key: scaffoldKey,
      body: child,
      drawer: Drawer(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                // User Header
                state.maybeWhen(
                  authenticated: (user) => UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: theme.colorScheme.primaryContainer,
                      child: Text(
                        user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    accountName: Text(
                      user.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    accountEmail: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '+${user.phoneNumber}',
                          style: TextStyle(
                            color: theme.colorScheme.onPrimary.withOpacity(0.9),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          user.farmLocation.address,
                          style: TextStyle(
                            fontSize: 12,
                            color: theme.colorScheme.onPrimary.withOpacity(0.7),
                            height: 1.2,
                            ),
                          ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  orElse: () => UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: theme.colorScheme.primaryContainer,
                      child: Icon(
                        Icons.person_outline,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    accountName: const Text('Guest User'),
                    accountEmail: const Text('Please login to continue'),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),

                // Main Menu Items
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // Home
                      ListTile(
                        leading: const Icon(Icons.home),
                        title: const Text('Home'),
                        onTap: () {
                          context.pop(); // Close drawer
                          context.go(RouteNames.dashboard);
                        },
                      ),

                      // Profile
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: const Text('Profile'),
                        onTap: () {
                          context.pop(); // Close drawer
                          context.go(RouteNames.profile);
                        },
                      ),

                      const Divider(),

                      // Cattle Management
                      ListTile(
                        leading: const Icon(Icons.add_circle_outline),
                        title: const Text('Add Cattle'),
                        onTap: () {
                          context.pop();
                          context.go(RouteNames.addCattle);
                        },
                      ),

                      ListTile(
                        leading: const Icon(Icons.nfc),
                        title: const Text('Add Collar Tag'),
                        onTap: () {
                          context.pop();
                          context.go(RouteNames.addCollarTag);
                        },
                      ),
                    ],
                  ),
                ),

                // Bottom Menu Items
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.contact_support_outlined),
                  title: const Text('Contact Us'),
                  onTap: () {
                    context.pop();
                    context.go(RouteNames.contactUs);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    context.pop();
                    _showLogoutDialog(context);
                  },
                ),

                // App Version
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 16,
                        color: theme.textTheme.bodySmall?.color,
                      ),
                      const SizedBox(width: 8),
                      Text('v1.0.0',
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: _buildBottomNav(context),
    );
  }

  NavigationBar _buildBottomNav(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        switch (index) {
          case 0:
            context.go(RouteNames.dashboard);
            break;
          case 1:
            context.go(RouteNames.alerts);
            break;
          case 2:
            context.go(RouteNames.cattleList);
            break;
        }
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.dashboard_outlined),
          selectedIcon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        NavigationDestination(
          icon: Icon(Icons.notifications_outlined),
          selectedIcon: Icon(Icons.notifications),
          label: 'Alerts',
        ),
        NavigationDestination(
          icon: Icon(Icons.list_outlined),
          selectedIcon: Icon(Icons.list),
          label: 'Cattle',
        ),
      ],
    );
  }

  Future<void> _showLogoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => context.pop(), // Close dialog
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                context.pop(); // Close dialog
                // Clear navigation stack and go to login
                context.read<AuthBloc>().add(const LogoutEvent());
                // Using go instead of pushReplacement to clear the stack
                context.go(RouteNames.login);
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
