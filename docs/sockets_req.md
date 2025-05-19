# Socket.IO Integration Guide for Flutter (MVP)

## Setup

1. Add socket.io dependency to `pubspec.yaml`:
```yaml
dependencies:
  socket_io_client: ^2.0.3+1
  provider: ^6.1.1
```

2. Run:
```bash
flutter pub get
```

## Implementation

### 1. Create Telemetry Model

```dart
// lib/models/telemetry_data.dart
class TelemetryData {
  final String tagId;
  final String cattleId;
  final double temperature;
  final double heartRate;
  final double activity;
  final DateTime timestamp;

  TelemetryData.fromJson(Map<String, dynamic> json)
      : tagId = json['tagId'],
        cattleId = json['cattleId'],
        temperature = json['temperature'].toDouble(),
        heartRate = json['heartRate'].toDouble(),
        activity = json['activity'].toDouble(),
        timestamp = DateTime.fromMillisecondsSinceEpoch(json['timestamp']);
}
```

### 2. Create Socket Service

```dart
// lib/services/socket_service.dart
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  static final SocketService _instance = SocketService._internal();
  factory SocketService() => _instance;
  SocketService._internal();

  IO.Socket? _socket;
  final _telemetryControllers = <String, StreamController<TelemetryData>>{};

  void initialize(String baseUrl, String token) {
    _socket = IO.io(baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
      'extraHeaders': {'Authorization': 'Bearer $token'}
    });

    _setupSocketListeners();
    _socket?.connect();
  }

  void _setupSocketListeners() {
    _socket?.on('connect', (_) => print('Socket connected'));
    _socket?.on('telemetry-update', (data) {
      final telemetry = TelemetryData.fromJson(data);
      _telemetryControllers[telemetry.cattleId]?.add(telemetry);
    });
  }

  Stream<TelemetryData> subscribeToCattle(String cattleId, String userId) {
    _telemetryControllers[cattleId] ??= StreamController<TelemetryData>.broadcast();

    _socket?.emit('subscribe-cattle', {
      'cattleId': cattleId,
      'userId': userId
    });

    return _telemetryControllers[cattleId]!.stream;
  }

  void unsubscribeFromCattle(String cattleId) {
    _socket?.emit('unsubscribe-cattle', cattleId);
    _telemetryControllers[cattleId]?.close();
    _telemetryControllers.remove(cattleId);
  }

  void dispose() {
    _socket?.disconnect();
    _socket?.dispose();
    _telemetryControllers.values.forEach((controller) => controller.close());
    _telemetryControllers.clear();
  }
}
```

### 3. Create Simple Provider

```dart
// lib/providers/telemetry_provider.dart
class TelemetryProvider extends ChangeNotifier {
  final SocketService _socketService = SocketService();
  TelemetryData? _latestTelemetry;
  StreamSubscription? _subscription;

  TelemetryData? get latestTelemetry => _latestTelemetry;

  void startMonitoring(String cattleId, String userId) {
    _subscription = _socketService
        .subscribeToCattle(cattleId, userId)
        .listen((telemetry) {
      _latestTelemetry = telemetry;
      notifyListeners();
    });
  }

  void stopMonitoring(String cattleId) {
    _subscription?.cancel();
    _socketService.unsubscribeFromCattle(cattleId);
    _latestTelemetry = null;
    notifyListeners();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
```

### 4. Create UI Widget

```dart
// lib/widgets/telemetry_card.dart
class TelemetryCard extends StatelessWidget {
  final String cattleId;
  final String userId;

  const TelemetryCard({
    required this.cattleId,
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TelemetryProvider()..startMonitoring(cattleId, userId),
      child: Consumer<TelemetryProvider>(
        builder: (context, provider, _) {
          final telemetry = provider.latestTelemetry;

          if (telemetry == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Temperature
                  ListTile(
                    leading: const Icon(Icons.thermostat),
                    title: Text('${telemetry.temperature.toStringAsFixed(1)}°C'),
                    subtitle: const Text('Temperature'),
                  ),

                  // Heart Rate
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: Text('${telemetry.heartRate.toStringAsFixed(0)} BPM'),
                    subtitle: const Text('Heart Rate'),
                  ),

                  // Activity Level
                  ListTile(
                    leading: const Icon(Icons.directions_run),
                    title: Text(telemetry.activity.toStringAsFixed(1)),
                    subtitle: const Text('Activity'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
```

### 5. Use in Cattle Detail Screen

```dart
// lib/screens/cattle_detail_screen.dart
class CattleDetailScreen extends StatelessWidget {
  final String cattleId;
  final String userId;

  const CattleDetailScreen({
    required this.cattleId,
    required this.userId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cattle Details')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Basic cattle info
            // ... other widgets ...

            // Live telemetry data
            TelemetryCard(
              cattleId: cattleId,
              userId: userId,
            ),
          ],
        ),
      ),
    );
  }
}
```

### 6. Initialize Socket Service

In your app's initialization (e.g., `main.dart` or after login):

```dart
void initializeSocket(String token) {
  final socketService = SocketService();
  socketService.initialize(
    'http://your-backend-url',  // Replace with your backend URL
    token
  );
}
```

## How It Works

1. Socket connects to your backend when initialized
2. When viewing cattle details:
    - UI widget subscribes to updates for that cattle
    - Backend sends telemetry updates every 5 seconds
    - UI updates automatically with new data
3. When leaving the screen:
    - Widget unsubscribes from updates
    - Resources are cleaned up

That's it! This gives you a basic real-time telemetry display for your cattle monitoring app. The UI will automatically update whenever new data arrives from the backend.