import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:cattle_health/features/cattle/models/telemetry_data.dart';

enum SocketConnectionState {
  disconnected,
  connecting,
  connected,
  error,
}

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;
  SocketService._internal();

  IO.Socket? _socket;
  final _telemetryControllers = <String, StreamController<TelemetryData>>{};
  final _connectionStateController = StreamController<SocketConnectionState>.broadcast();
  Timer? _reconnectTimer;
  bool _isInitialized = false;

  Stream<SocketConnectionState> get connectionState => _connectionStateController.stream;

  void initialize(String baseUrl, String token) {
    if (_isInitialized) return;
    _isInitialized = true;

    _socket = IO.io(
      baseUrl,
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setExtraHeaders({'Authorization': 'Bearer $token'})
          .enableAutoConnect()
          .enableReconnection()
          .setReconnectionAttempts(double.infinity)
          .setReconnectionDelay(1000)
          .setReconnectionDelayMax(5000)
          .build(),
    );

    _setupSocketListeners();
    _socket?.connect();
  }

  void _setupSocketListeners() {
    _socket
      ?..on('connect', (_) {
        print('Socket connected');
        _connectionStateController.add(SocketConnectionState.connected);
        _reconnectTimer?.cancel();
        _reconnectTimer = null;

        // Resubscribe to all active cattle
        for (final cattleId in _telemetryControllers.keys) {
          _resubscribeToCattle(cattleId);
        }
      })
      ..on('disconnect', (_) {
        print('Socket disconnected');
        _connectionStateController.add(SocketConnectionState.disconnected);
        _startReconnectTimer();
      })
      ..on('connect_error', (error) {
        print('Socket connection error: $error');
        _connectionStateController.add(SocketConnectionState.error);
        _startReconnectTimer();
      })
      ..on('telemetry-update', (data) {
        try {
          final telemetry = TelemetryData.fromJson(Map<String, dynamic>.from(data));
          _telemetryControllers[telemetry.cattleId]?.add(telemetry);
        } catch (e) {
          print('Error parsing telemetry data: $e');
        }
      });
  }

  void _startReconnectTimer() {
    _reconnectTimer?.cancel();
    _reconnectTimer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_socket?.connected ?? false) {
        timer.cancel();
        return;
      }
      _connectionStateController.add(SocketConnectionState.connecting);
      _socket?.connect();
    });
  }

  void _resubscribeToCattle(String cattleId) {
    _socket?.emit('subscribe-cattle', {'cattleId': cattleId});
  }

  Stream<TelemetryData> subscribeToCattle(String cattleId, String userId) {
    // Return existing stream if already subscribed
    if (_telemetryControllers.containsKey(cattleId)) {
      return _telemetryControllers[cattleId]!.stream;
    }

    // Create a new stream controller
    final streamController = StreamController<TelemetryData>.broadcast(
      onCancel: () {
        // Only unsubscribe if there are no more listeners
        if (!_telemetryControllers[cattleId]!.hasListener) {
          unsubscribeFromCattle(cattleId);
        }
      },
    );

    // Store the controller
    _telemetryControllers[cattleId] = streamController;

    // Subscribe to updates if connected
    if (_socket?.connected ?? false) {
      _socket?.emit('subscribe-cattle', {
        'cattleId': cattleId,
        'userId': userId,
      });
    }

    return streamController.stream;
  }

  void unsubscribeFromCattle(String cattleId) {
    if (_socket?.connected ?? false) {
      _socket?.emit('unsubscribe-cattle', {'cattleId': cattleId});
    }
    _telemetryControllers[cattleId]?.close();
    _telemetryControllers.remove(cattleId);
  }

  void updateToken(String newToken) {
    _socket?.io.options?['extraHeaders'] = {'Authorization': 'Bearer $newToken'};
    if (_socket?.connected ?? false) {
      _socket?.disconnect();
      _socket?.connect();
    }
  }

  bool get isConnected => _socket?.connected ?? false;

  void dispose() {
    _reconnectTimer?.cancel();
    _socket?.disconnect();
    _socket?.dispose();
    _telemetryControllers.values.forEach((controller) => controller.close());
    _telemetryControllers.clear();
    _connectionStateController.close();
    _isInitialized = false;
  }
}
