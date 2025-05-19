import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:cattle_health/features/cattle/services/socket_service.dart';
import 'package:cattle_health/features/cattle/providers/telemetry_provider.dart';
import 'package:cattle_health/core/theme/app_theme.dart';
import 'package:cattle_health/core/theme/theme_cubit.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/repositories/auth_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:cattle_health/routes/app_router.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_bloc.dart';
import 'package:cattle_health/features/cattle/repositories/cattle_repository.dart';

import 'features/auth/bloc/auth_event.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize auth storage and get token
  final authStorage = AuthStorage();
  final token = await authStorage.getAccessToken();

  // Initialize socket service with token
  SocketService().initialize(
    'ws://192.168.0.11:3000',
    token ?? '',
  );

  runApp(const PashuSehatApp());
}

class PashuSehatApp extends StatelessWidget {
  const PashuSehatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthStorage(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(
            tokenStorage: context.read<AuthStorage>(),
          ),
        ),
        RepositoryProvider(
          create: (context) => CattleRepository(
            tokenStorage: context.read<AuthStorage>(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: context.read<AuthRepository>(),
              tokenStorage: context.read<AuthStorage>(),
            )..add(const CheckAuthStatusEvent()),
          ),
          BlocProvider(
            create: (context) => CattleBloc(cattleRepository: context.read<CattleRepository>()),
          ),
        ],
        child: ChangeNotifierProvider(
          create: (context) => TelemetryProvider(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return MaterialApp.router(
                title: 'PashuSehat',
                themeMode: context.read<ThemeCubit>().themeMode,
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                routerConfig: AppRouter.router,
              );
            },
          ),
        ),
      ),
    );
  }
}
