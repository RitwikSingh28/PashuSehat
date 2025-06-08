// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryReadingImpl _$$TelemetryReadingImplFromJson(
  Map<String, dynamic> json,
) => _$TelemetryReadingImpl(
  tagId: json['tagId'] as String,
  timestamp: (json['timestamp'] as num).toInt(),
  temperature: (json['temperature'] as num).toDouble(),
  pulseRate: (json['pulseRate'] as num).toInt(),
  motion: (json['motionData'] as num).toDouble(),
  batteryLevel: (json['batteryLevel'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$TelemetryReadingImplToJson(
  _$TelemetryReadingImpl instance,
) => <String, dynamic>{
  'tagId': instance.tagId,
  'timestamp': instance.timestamp,
  'temperature': instance.temperature,
  'pulseRate': instance.pulseRate,
  'motionData': instance.motion,
  'batteryLevel': instance.batteryLevel,
};
