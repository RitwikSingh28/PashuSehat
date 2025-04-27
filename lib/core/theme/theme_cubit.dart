import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

/// States for theme management
enum ThemeState { light, dark, system }

/// Cubit for managing theme state
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.system);

  /// Get the current theme mode
  ThemeMode get themeMode {
    switch (state) {
      case ThemeState.light:
        return ThemeMode.light;
      case ThemeState.dark:
        return ThemeMode.dark;
      case ThemeState.system:
        return ThemeMode.system;
    }
  }

  /// Set theme to light mode
  void setLightTheme() => emit(ThemeState.light);

  /// Set theme to dark mode
  void setDarkTheme() => emit(ThemeState.dark);

  /// Set theme to follow system
  void setSystemTheme() => emit(ThemeState.system);

  /// Toggle between light and dark theme
  void toggleTheme() {
    switch (state) {
      case ThemeState.light:
        setDarkTheme();
        break;
      case ThemeState.dark:
        setLightTheme();
        break;
      case ThemeState.system:
        // If system, default to light when toggling
        setLightTheme();
        break;
    }
  }
}
