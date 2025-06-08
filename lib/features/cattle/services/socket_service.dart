import 'dart:async';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;
  SocketService._internal();

  IO.Socket? _socket;
  final _telemetryControllers = <String, StreamController<Map<String, dynamic>>>{};
  final _pendingSubscriptions = <String, String>{};  // Map of cattleId to userId

  void initialize(String url, String token) {
    if (_socket != null) return;

    print('Initializing socket with URL: $url');

    _socket = IO.io(
      url,
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
      ?..onConnect((_) {
        print('Socket connected');
        // Resubscribe to pending subscriptions on reconnect
        for (final entry in _pendingSubscriptions.entries) {
          print('Resubscribing to cattle: ${entry.key} for user: ${entry.value}');
          _socket?.emit('subscribe-cattle', {
            'cattleId': entry.key,
            'userId': entry.value,
          });
        }
      })
      ..onDisconnect((_) {
        print('Socket disconnected');
      })
      ..onConnectError((error) {
        print('Socket connection error: $error');
      })
      ..onError((error) {
        print('Socket error: $error');
      });
  }

  Stream<Map<String, dynamic>> subscribeToCattle(String cattleId, String userId) {
    print('Subscribing to cattle: $cattleId for user: $userId');

    if (_telemetryControllers.containsKey(cattleId)) {
      return _telemetryControllers[cattleId]!.stream;
    }

    final controller = StreamController<Map<String, dynamic>>.broadcast();
    _telemetryControllers[cattleId] = controller;

    // Set up the telemetry listener
    _socket?.on('telemetry-update', (data) {
      print('DEBUG: Raw telemetry data received: $data');
      if (data is Map<String, dynamic> && data['cattleId'] == cattleId) {
        print('Received telemetry data for $cattleId: $data');
        print('DEBUG: About to add data to controller');
        controller.add(data);
        print('DEBUG: Data added to controller');
      }
    });

    // Set up the alert listener
    _socket?.on('alert-notification', (alert) {
      print('Received alert: $alert');
      // You can handle alerts separately or add them to a different stream
    });

    // Always add to pending subscriptions
    _pendingSubscriptions[cattleId] = userId;

    // Try to subscribe immediately if connected
    if (_socket?.connected ?? false) {
      print('Socket connected, emitting subscribe event for cattle: $cattleId');
      print('DEBUG: Socket ID: ${_socket?.id}');
      _socket?.emit('subscribe-cattle', {
        'cattleId': cattleId,
        'userId': userId,
      });
    } else {
      print('Socket not connected, will subscribe when connection is established');
      // Make sure socket is connecting
      _socket?.connect();
    }

    return controller.stream;
  }

  void unsubscribeFromCattle(String cattleId) {
    print('Unsubscribing from cattle: $cattleId');
    _pendingSubscriptions.remove(cattleId);
    _socket?.emit('unsubscribe-cattle', cattleId);
    _socket?.off('telemetry-update');
    _socket?.off('alert-notification');
    _telemetryControllers[cattleId]?.close();
    _telemetryControllers.remove(cattleId);
  }

  void dispose() {
    print('Disposing socket service');
    _pendingSubscriptions.clear();
    _socket?.disconnect();
    _socket?.dispose();
    for (final controller in _telemetryControllers.values) {
      controller.close();
    }
    _telemetryControllers.clear();
    _socket = null;
  }
}
