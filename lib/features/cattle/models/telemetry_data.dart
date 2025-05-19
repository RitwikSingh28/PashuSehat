import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_data.freezed.dart';
part 'telemetry_data.g.dart';

@freezed
class TelemetryData with _$TelemetryData {
  const factory TelemetryData({
    required String tagId,
    required String cattleId,
    required double temperature,
    required double heartRate,
    required DateTime timestamp,
  }) = _TelemetryData;

  factory TelemetryData.fromJson(Map<String, dynamic> json) => _$TelemetryDataFromJson(json);
}
