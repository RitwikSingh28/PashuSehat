// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryDataImpl _$$TelemetryDataImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryDataImpl(
      tagId: json['tagId'] as String,
      cattleId: json['cattleId'] as String,
      temperature: (json['temperature'] as num).toDouble(),
      heartRate: (json['pulseRate'] as num).toInt(),
      motionData: (json['motionData'] as num).toDouble(),
      batteryLevel: (json['batteryLevel'] as num?)?.toInt() ?? 100,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$TelemetryDataImplToJson(_$TelemetryDataImpl instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'cattleId': instance.cattleId,
      'temperature': instance.temperature,
      'pulseRate': instance.heartRate,
      'motionData': instance.motionData,
      'batteryLevel': instance.batteryLevel,
      'timestamp': instance.timestamp,
    };
