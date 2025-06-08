import 'package:flutter/material.dart';

enum CattleState {
  resting,
  grazing,
  walking;

  static CattleState fromMotionData(double motion) {
    if (motion >= 1.5) {
      return CattleState.walking;
    } else if (motion >= 0.5) {
      return CattleState.grazing;
    } else {
      return CattleState.resting;
    }
  }

  String get displayName {
    switch (this) {
      case CattleState.resting:
        return 'Resting';
      case CattleState.grazing:
        return 'Grazing';
      case CattleState.walking:
        return 'Walking';
    }
  }

  IconData get icon {
    switch (this) {
      case CattleState.resting:
        return Icons.nightlight;
      case CattleState.grazing:
        return Icons.grass;
      case CattleState.walking:
        return Icons.directions_walk;
    }
  }

  Color get color {
    switch (this) {
      case CattleState.resting:
        return Colors.blue;
      case CattleState.grazing:
        return Colors.green;
      case CattleState.walking:
        return Colors.orange;
    }
  }
}
