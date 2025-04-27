import 'package:flutter/material.dart';

/// Core color palette for PashuSehat app
/// Colors chosen to reflect agricultural, pastoral, and veterinary themes
class AppColors {
  // Primary Colors - Earthy, pastoral tones
  static const Color primary = Color(0xFF558B2F);     // Sage Green
  static const Color primaryLight = Color(0xFF85BB5C); // Light Pastoral
  static const Color primaryDark = Color(0xFF33691E);  // Deep Forest

  // Secondary Colors - Medical/Professional
  static const Color secondary = Color(0xFF0277BD);    // Medical Blue
  static const Color secondaryLight = Color(0xFF58A5F0); // Clean Blue
  static const Color secondaryDark = Color(0xFF004C8C); // Deep Medical

  // Accent Colors - Contextual meanings
  static const Color accent = Color(0xFFB78B38);      // Warm Earth/Hay
  static const Color success = Color(0xFF2E7D32);     // Healthy Pasture
  static const Color error = Color(0xFFC62828);       // Alert Red
  static const Color warning = Color(0xFFD84315);     // Safety Orange
  static const Color info = Color(0xFF0277BD);        // Info Blue

  // Natural Colors - Representing farm environment
  static const Color soil = Color(0xFF795548);        // Rich Soil
  static const Color grass = Color(0xFF7CB342);       // Fresh Grass
  static const Color hay = Color(0xFFD4B483);         // Dry Hay

  // Neutral Colors - Clean and professional
  static const Color background = Color(0xFFF5F5F5);  // Off-White
  static const Color surface = Color(0xFFFFFFFF);     // Pure White
  static const Color divider = Color(0xFFE0E0E0);     // Light Grey

  // Text Colors
  static const Color textPrimary = Color(0xFF2C2C2C);
  static const Color textSecondary = Color(0xFF616161);
  static const Color textHint = Color(0xFF9E9E9E);
  static const Color textDisabled = Color(0xFFBDBDBD);
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnSecondary = Color(0xFFFFFFFF);

  // Dark Theme Colors - Night mode for field use
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkError = Color(0xFFCF6679);

  // Chart Colors - Data Visualization
  // Chosen to be distinct yet thematic
  static const List<Color> chartColors = [
    Color(0xFF558B2F), // Sage Green
    Color(0xFF0277BD), // Medical Blue
    Color(0xFFB78B38), // Warm Earth
    Color(0xFF795548), // Soil Brown
    Color(0xFF7CB342), // Fresh Grass
    Color(0xFFD4B483), // Hay
  ];

  // Status Colors - For health indicators
  static const Color healthy = Color(0xFF43A047);     // Vibrant Healthy
  static const Color moderate = Color(0xFFFB8C00);    // Attention Needed
  static const Color critical = Color(0xFFE53935);    // Critical Care
  static const Color recovering = Color(0xFF00897B);  // Recovery Green
}
