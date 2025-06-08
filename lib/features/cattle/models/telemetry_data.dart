import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_data.freezed.dart';
part 'telemetry_data.g.dart';

@freezed
class TelemetryData with _$TelemetryData {
  const factory TelemetryData({
    required String tagId,
    required String cattleId,
    required double temperature,
    @JsonKey(name: 'pulseRate') required int heartRate,
    required double motionData,
    @JsonKey(defaultValue: 100, includeIfNull: false) int? batteryLevel,
    required int timestamp,
  }) = _TelemetryData;

  factory TelemetryData.fromJson(Map<String, dynamic> json) => _$TelemetryDataFromJson(json);
}
