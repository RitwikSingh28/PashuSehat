import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/core/theme/app_theme.dart';
import 'package:cattle_health/core/theme/theme_cubit.dart';
import 'package:cattle_health/features/auth/bloc/auth_bloc.dart';
import 'package:cattle_health/features/auth/repositories/auth_repository.dart';
import 'package:cattle_health/features/auth/services/token_storage.dart';
import 'package:cattle_health/routes/app_router.dart';

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
          create: (context) => TokenStorage(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(
            tokenStorage: context.read<TokenStorage>(),
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
              tokenStorage: context.read<TokenStorage>(),
            )..add(const CheckAuthStatusEvent()),
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
