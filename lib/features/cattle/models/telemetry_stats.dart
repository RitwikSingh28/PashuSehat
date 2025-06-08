import 'package:freezed_annotation/freezed_annotation.dart';

part 'telemetry_stats.freezed.dart';
part 'telemetry_stats.g.dart';

@freezed
class TelemetryStats with _$TelemetryStats {
  const factory TelemetryStats({
    required double avgTemperature,
    required int avgPulseRate,
    required double avgMotion,
    double? lastBatteryLevel,
    required int readingCount,
  }) = _TelemetryStats;

  factory TelemetryStats.fromJson(Map<String, dynamic> json) =>
      _$TelemetryStatsFromJson(json);
}
