import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_data.freezed.dart';
part 'telemetry_data.g.dart';

@freezed
class TelemetryData with _$TelemetryData {
  const TelemetryData._();  // Add this line for custom methods

  const factory TelemetryData({
    required String tagId,
    @JsonKey(defaultValue: 100) int? batteryLevel,
    required double motionData,
    required int timestamp,
    required int ttl,
    required double temperature,
    @JsonKey(name: 'pulseRate') required int heartRate,
  }) = _TelemetryData;

  factory TelemetryData.fromJson(Map<String, dynamic> json) => _$TelemetryDataFromJson(json);

  DateTime get timestampDateTime => DateTime.fromMillisecondsSinceEpoch(timestamp);
}
