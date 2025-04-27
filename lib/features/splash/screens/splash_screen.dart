import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    // Simulate loading time
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      // TODO: Check if first launch to show onboarding
      final bool isFirstLaunch = true; // Replace with actual check

      if (isFirstLaunch) {
        context.go(RouteNames.onboarding);
      } else {
        context.go(RouteNames.dashboard);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Replace with actual logo
            const Icon(
              Icons.pets,
              size: 80,
            ),
            const SizedBox(height: 16),
            const Text(
              'PashuSehat',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
