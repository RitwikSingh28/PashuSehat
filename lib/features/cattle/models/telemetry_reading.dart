import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_reading.freezed.dart';
part 'telemetry_reading.g.dart';

@freezed
class TelemetryReading with _$TelemetryReading {
  const factory TelemetryReading({
    required String tagId,
    required int timestamp,
    required double temperature,
    required int pulseRate,
    @JsonKey(name: 'motionData') required double motion,
    double? batteryLevel,
  }) = _TelemetryReading;

  factory TelemetryReading.fromJson(Map<String, dynamic> json) =>
      _$TelemetryReadingFromJson(json);
}
