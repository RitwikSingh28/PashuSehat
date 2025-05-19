import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:cattle_health/features/cattle/models/telemetry_data.dart';
import 'package:cattle_health/features/cattle/services/socket_service.dart';

class TelemetryProvider extends ChangeNotifier {
  final SocketService _socketService = SocketService();
  TelemetryData? _latestTelemetry;
  StreamSubscription? _telemetrySubscription;
  StreamSubscription? _connectionSubscription;
  SocketConnectionState _connectionState = SocketConnectionState.disconnected;
  String? _error;

  TelemetryData? get latestTelemetry => _latestTelemetry;
  SocketConnectionState get connectionState => _connectionState;
  String? get error => _error;
  bool get isConnected => _connectionState == SocketConnectionState.connected;

  TelemetryProvider() {
    _connectionSubscription = _socketService.connectionState.listen(
      (state) {
        _connectionState = state;
        if (state == SocketConnectionState.error) {
          _error = 'Connection error occurred';
        } else {
          _error = null;
        }
        notifyListeners();
      },
    );
  }

  void startMonitoring(String cattleId, String userId) {
    _error = null;
    _telemetrySubscription?.cancel();

    try {
      _telemetrySubscription = _socketService
          .subscribeToCattle(cattleId, userId)
          .listen(
        (telemetry) {
          _latestTelemetry = telemetry;
          notifyListeners();
        },
        onError: (error) {
          _error = 'Failed to receive telemetry data: $error';
          notifyListeners();
        },
      );
    } catch (e) {
      _error = 'Failed to start monitoring: $e';
      notifyListeners();
    }
  }

  void stopMonitoring(String cattleId) {
    _telemetrySubscription?.cancel();
    _socketService.unsubscribeFromCattle(cattleId);
    _latestTelemetry = null;
    _error = null;
    notifyListeners();
  }

  void reconnect() {
    if (_connectionState == SocketConnectionState.disconnected ||
        _connectionState == SocketConnectionState.error) {
      _socketService.dispose();
      // Note: You'll need to get the token and URL from somewhere
      // This could be passed in or stored in a secure storage
      _socketService.initialize(
        'ws://192.168.0.11:3000/api',
        '', // You need to provide the token here
      );
    }
  }

  @override
  void dispose() {
    _telemetrySubscription?.cancel();
    _connectionSubscription?.cancel();
    super.dispose();
  }
}
