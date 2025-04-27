import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        child: Column(
          children: [
            // User Header
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person_outline),
              ),
              accountName: const Text('User Name'), // TODO: Replace with actual user data
              accountEmail: const Text('user@example.com'),
              decoration: BoxDecoration(
                color: theme.primaryColor,
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
            const SizedBox(height: 16), // Bottom padding
          ],
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
                // TODO: Implement logout logic
                // context.go(RouteNames.login);
              },
              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
