import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/core/theme/app_theme.dart';
import 'package:cattle_health/core/theme/theme_cubit.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/repositories/auth_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:cattle_health/routes/app_router.dart';
import 'package:cattle_health/features/cattle/bloc/cattle_bloc.dart';
import 'package:cattle_health/features/cattle/repositories/cattle_repository.dart';

import 'features/auth/bloc/auth_event.dart';

void main() {
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
    );
  }
}
