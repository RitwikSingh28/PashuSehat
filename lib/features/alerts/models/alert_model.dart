import 'package:freezed_annotation/freezed_annotation.dart';

part 'alert_model.freezed.dart';
part 'alert_model.g.dart';

DateTime _timestampFromJson(dynamic value) {
  if (value == null) throw ArgumentError('Timestamp cannot be null');
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  if (value is String) return DateTime.parse(value);
  if (value is DateTime) return value;
  throw ArgumentError('Invalid timestamp format: $value');
}

DateTime? _nullableTimestampFromJson(dynamic value) {
  if (value == null) return null;
  if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
  if (value is String) return DateTime.parse(value);
  if (value is DateTime) return value;
  throw ArgumentError('Invalid timestamp format: $value');
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
  newAlert,
  @JsonValue('acknowledged')
  acknowledged,
}

@freezed
class AlertThreshold with _$AlertThreshold {
  const factory AlertThreshold({
    double? min,
    double? max,
  }) = _AlertThreshold;

  factory AlertThreshold.fromJson(Map<String, dynamic> json) => _$AlertThresholdFromJson(json);
}

@freezed
class Alert with _$Alert {
  const factory Alert({
    required String id,
    required String cattleId,
    required String tagId,
    @JsonKey(fromJson: _timestampFromJson) required DateTime timestamp,
    required AlertType type,
    required double value,
    String? cattleName,
    AlertSeverity? severity,
    AlertThreshold? threshold,
    @Default(AlertStatus.newAlert) AlertStatus status,
    String? acknowledgedBy,
    @JsonKey(fromJson: _nullableTimestampFromJson) DateTime? acknowledgedAt,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}
