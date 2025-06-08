import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_model.freezed.dart';
part 'alert_model.g.dart';

@freezed
class TelemetryData with _$TelemetryData {
  const factory TelemetryData({
    required int timestamp,
    required double temperature,
    required double pulseRate,
    @JsonKey(name: 'motionData') required double motion,
    @JsonKey(name: 'batteryLevel') required double battery,
  }) = _TelemetryData;

  factory TelemetryData.fromJson(Map<String, dynamic> json) => _$TelemetryDataFromJson(json);
}

enum AlertType {
  @JsonValue('temperature')
  temperature,
  @JsonValue('pulseRate')
  pulseRate,
  @JsonValue('motion')
  motion,
  @JsonValue('battery')
  battery,
}

enum AlertSeverity {
  @JsonValue('low')
  low,
  @JsonValue('medium')
  medium,
  @JsonValue('high')
  high,
}

enum AlertStatus {
  @JsonValue('new')
  @JsonKey(name: 'new')
  new_,  // Using new_ since 'new' is a reserved word in Dart
  @JsonValue('acknowledged')
  acknowledged,
}

@freezed
class AlertThreshold with _$AlertThreshold {
  const factory AlertThreshold({
    required double? min,
    required double? max,
  }) = _AlertThreshold;

  factory AlertThreshold.fromJson(Map<String, dynamic> json) =>
      _$AlertThresholdFromJson(json);
}

@freezed
class Alert with _$Alert {
  const factory Alert({
    @JsonKey(name: 'alertId') required String id,
    required String userId,
    required String cattleId,
    String? cattleName,
    required String tagId,
    @JsonKey(fromJson: _timestampFromJson) required DateTime timestamp,
    required AlertType type,
    required AlertSeverity severity,
    required double value,
    required AlertThreshold threshold,
    @JsonKey(name: 'status') @Default(AlertStatus.new_) AlertStatus status,
    String? acknowledgedBy,
    @Default([]) @JsonKey(defaultValue: []) List<TelemetryData> recentTelemetry,
    @JsonKey(fromJson: _nullableTimestampFromJson) DateTime? acknowledgedAt,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}

DateTime _timestampFromJson(dynamic value) {
  if (value == null) throw ArgumentError('Timestamp cannot be null');
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  if (value is String) return DateTime.parse(value).toLocal();
  if (value is DateTime) return value;
  throw ArgumentError('Invalid timestamp format: $value');
}

DateTime? _nullableTimestampFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  if (value is String) return DateTime.parse(value).toLocal();
  if (value is DateTime) return value;
  throw ArgumentError('Invalid timestamp format: $value');
}
