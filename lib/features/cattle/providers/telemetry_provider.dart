import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:cattle_health/features/cattle/services/socket_service.dart';
import 'package:cattle_health/features/cattle/models/socket_connection_state.dart';
import 'package:cattle_health/features/cattle/models/telemetry_data.dart';

class TelemetryProvider extends ChangeNotifier {
  final SocketService _socketService = SocketService();
  TelemetryData? _latestTelemetry;
  StreamSubscription? _telemetrySubscription;
  String? _error;
  String? _currentCattleId;
  String? _currentUserId;
  SocketConnectionState _connectionState = SocketConnectionState.disconnected;

  TelemetryData? get latestTelemetry => _latestTelemetry;
  String? get error => _error;
  SocketConnectionState get connectionState => _connectionState;

  void startMonitoring(String cattleId, String userId) {
    _currentCattleId = cattleId;
    _currentUserId = userId;

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _error = null;
      _connectionState = SocketConnectionState.connecting;
      notifyListeners();

      _telemetrySubscription?.cancel();

      try {
        print('TelemetryProvider: Starting monitoring for cattle $cattleId');
        _telemetrySubscription = _socketService
            .subscribeToCattle(cattleId, userId)
            .listen(
              (data) {
                print('TelemetryProvider: Received data: $data');
                print('DEBUG: Attempting to parse data to TelemetryData');
                _latestTelemetry = TelemetryData.fromJson(data);
                _error = null;
                _connectionState = SocketConnectionState.connected;
                notifyListeners();
              },
              onError: (error) {
                print('TelemetryProvider: Error: $error');
                _error = 'Failed to receive telemetry data: $error';
                _connectionState = SocketConnectionState.error;
                notifyListeners();
              },
            );
      } catch (e) {
        print('TelemetryProvider: Failed to start monitoring: $e');
        _error = 'Failed to start monitoring: $e';
        _connectionState = SocketConnectionState.error;
        notifyListeners();
      }
    });
  }

  void stopMonitoring(String cattleId) {
    print('TelemetryProvider: Stopping monitoring for cattle $cattleId');
    _telemetrySubscription?.cancel();
    _socketService.unsubscribeFromCattle(cattleId);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _latestTelemetry = null;
      _error = null;
      _connectionState = SocketConnectionState.disconnected;
      _currentCattleId = null;
      _currentUserId = null;
      notifyListeners();
    });
  }

  void reconnect() {
    if (_currentCattleId != null && _currentUserId != null) {
      startMonitoring(_currentCattleId!, _currentUserId!);
    }
  }

  @override
  void dispose() {
    _telemetrySubscription?.cancel();
    super.dispose();
  }
}
