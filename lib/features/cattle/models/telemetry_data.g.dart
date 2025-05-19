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
      heartRate: (json['heartRate'] as num).toDouble(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$TelemetryDataImplToJson(_$TelemetryDataImpl instance) =>
    <String, dynamic>{
      'tagId': instance.tagId,
      'cattleId': instance.cattleId,
      'temperature': instance.temperature,
      'heartRate': instance.heartRate,
      'timestamp': instance.timestamp.toIso8601String(),
    };
