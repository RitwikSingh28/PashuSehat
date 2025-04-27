import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cattle_health/core/theme/app_theme.dart';
import 'package:cattle_health/core/theme/theme_cubit.dart';
import 'package:cattle_health/routes/app_router.dart';

void main() {
  runApp(const PashuSehatApp());
}

class PashuSehatApp extends StatelessWidget {
  const PashuSehatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
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
    );
  }
}
