import 'package:cattle_health/features/cattle/screens/live_telemetry_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:cattle_health/features/alerts/bloc/alert_bloc.dart';
import 'package:cattle_health/features/alerts/repositories/alert_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:cattle_health/core/widgets/app_shell.dart';
import 'package:cattle_health/features/auth/screens/login_screen.dart';
import 'package:cattle_health/features/auth/screens/signup_screen.dart';
import 'package:cattle_health/features/auth/screens/verify_otp_screen.dart';
import 'package:cattle_health/features/auth/screens/forgot_password_screen.dart';
import 'package:cattle_health/features/splash/screens/splash_screen.dart';
import 'package:cattle_health/features/onboarding/screens/onboarding_screen.dart';
import 'package:cattle_health/features/dashboard/screens/dashboard_screen.dart';
import 'package:cattle_health/features/alerts/screens/alerts_screen.dart';
import 'package:cattle_health/features/alerts/screens/alert_details_screen.dart';
import 'package:cattle_health/features/cattle/screens/cattle_list_screen.dart';
import 'package:cattle_health/features/cattle/screens/cattle_details_screen.dart';
import 'package:cattle_health/features/cattle/screens/add_cattle_screen.dart';
import 'package:cattle_health/features/cattle/screens/add_note_screen.dart';
import 'package:cattle_health/features/collar/screens/add_collar_screen.dart';
import 'package:cattle_health/features/profile/screens/profile_screen.dart';
import 'package:cattle_health/features/contact/screens/contact_screen.dart';
import 'package:cattle_health/routes/route_names.dart';
import 'package:cattle_health/features/alerts/models/alert_model.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteNames.splash,
    routes: [
      // Non-shell routes (full screen routes)
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RouteNames.onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteNames.signup,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: RouteNames.verifyOtp,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return VerifyOtpScreen(
            userId: extra['userId'] as String,
            phone: extra['phone'] as String,
            isRegistration: extra['isRegistration'] as bool? ?? false,
          );
        },
      ),
      GoRoute(
        path: RouteNames.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      // Shell route (contains bottom navigation and drawer)
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          // Determine current index based on location
          int index = 0;
          final location = state.matchedLocation;
          if (location.startsWith(RouteNames.alerts)) {
            index = 1;
          } else if (location.startsWith(RouteNames.cattleList)) {
            index = 2;
          }
          return AppShell(child: child, currentIndex: index);
        },
        routes: [
          // Dashboard tab
          GoRoute(
            path: RouteNames.dashboard,
            builder: (context, state) => BlocProvider(
              create: (context) => AlertBloc(
                alertRepository: AlertRepository(
                  tokenStorage: context.read<AuthStorage>(),
                ),
              ),
              child: const DashboardScreen(),
            ),
          ),

          // Alerts tab and details
          GoRoute(
            path: RouteNames.alerts,
            builder: (context, state) => BlocProvider(
              create: (context) => AlertBloc(
                alertRepository: AlertRepository(
                  tokenStorage: context.read<AuthStorage>(),
                ),
              ),
              child: const AlertsScreen(),
            ),
            routes: [
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return AlertDetailsScreen(alert: state.extra as Alert);
                },
              ),
            ],
          ),

          // Cattle tab and details
          GoRoute(
            path: RouteNames.cattleList,
            builder: (context, state) => const CattleListScreen(),
            routes: [
              GoRoute(
                path: 'add',
                builder: (context, state) => const AddCattleScreen(),
              ),
              GoRoute(
                path: ':id',
                builder: (context, state) {
                  final id = state.pathParameters['id']!;
                  return CattleDetailsScreen(id: id);
                },
                routes: [
                  GoRoute(
                    path: 'add-note',
                    builder: (context, state) => AddNoteScreen(
                      id: state.pathParameters['id']!,
                    ),
                  ),
                  GoRoute(
                    path: 'live',
                    name: 'live_telemetry',
                    builder: (context, state) => LiveTelemetryScreen(
                      cattleId: state.pathParameters['id']!,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Add Collar Tag
          GoRoute(
            path: RouteNames.addCollarTag,
            builder: (context, state) => const AddCollarScreen(),
          ),

          // Profile
          GoRoute(
            path: RouteNames.profile,
            builder: (context, state) => const ProfileScreen(),
          ),

          // Contact Us
          GoRoute(
            path: RouteNames.contactUs,
            builder: (context, state) => const ContactScreen(),
          ),
        ],
      ),
    ],
  );
}
