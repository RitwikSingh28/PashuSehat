// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryStatsImpl _$$TelemetryStatsImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryStatsImpl(
      avgTemperature: (json['avgTemperature'] as num).toDouble(),
      avgPulseRate: (json['avgPulseRate'] as num).toInt(),
      avgMotion: (json['avgMotion'] as num).toDouble(),
      lastBatteryLevel: (json['lastBatteryLevel'] as num?)?.toDouble(),
      readingCount: (json['readingCount'] as num).toInt(),
    );

Map<String, dynamic> _$$TelemetryStatsImplToJson(
  _$TelemetryStatsImpl instance,
) => <String, dynamic>{
  'avgTemperature': instance.avgTemperature,
  'avgPulseRate': instance.avgPulseRate,
  'avgMotion': instance.avgMotion,
  'lastBatteryLevel': instance.lastBatteryLevel,
  'readingCount': instance.readingCount,
};
