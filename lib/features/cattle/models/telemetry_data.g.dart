// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryDataImpl _$$TelemetryDataImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryDataImpl(
      tagId: json['tagId'] as String,
      batteryLevel: (json['batteryLevel'] as num).toInt(),
      motionData: (json['motionData'] as num).toDouble(),
      timestamp: (json['timestamp'] as num).toInt(),
      ttl: (json['ttl'] as num).toInt(),
      temperature: (json['temperature'] as num).toDouble(),
      heartRate: (json['pulseRate'] as num).toInt(),
    );

Map<String, dynamic> _$$TelemetryDataImplToJson(_$TelemetryDataImpl instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'batteryLevel': instance.batteryLevel,
      'motionData': instance.motionData,
      'timestamp': instance.timestamp,
      'ttl': instance.ttl,
      'temperature': instance.temperature,
      'pulseRate': instance.heartRate,
    };
