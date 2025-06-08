// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TelemetryDataImpl _$$TelemetryDataImplFromJson(Map<String, dynamic> json) =>
    _$TelemetryDataImpl(
      timestamp: (json['timestamp'] as num).toInt(),
      temperature: (json['temperature'] as num).toDouble(),
      pulseRate: (json['pulseRate'] as num).toDouble(),
      motion: (json['motionData'] as num).toDouble(),
      battery: (json['batteryLevel'] as num).toDouble(),
    );

Map<String, dynamic> _$$TelemetryDataImplToJson(_$TelemetryDataImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'temperature': instance.temperature,
      'pulseRate': instance.pulseRate,
      'motionData': instance.motion,
      'batteryLevel': instance.battery,
    };

_$AlertThresholdImpl _$$AlertThresholdImplFromJson(Map<String, dynamic> json) =>
    _$AlertThresholdImpl(
      min: (json['min'] as num?)?.toDouble(),
      max: (json['max'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$AlertThresholdImplToJson(
  _$AlertThresholdImpl instance,
) => <String, dynamic>{'min': instance.min, 'max': instance.max};

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
  id: json['alertId'] as String,
  userId: json['userId'] as String,
  cattleId: json['cattleId'] as String,
  cattleName: json['cattleName'] as String?,
  tagId: json['tagId'] as String,
  timestamp: _timestampFromJson(json['timestamp']),
  type: $enumDecode(_$AlertTypeEnumMap, json['type']),
  severity: $enumDecode(_$AlertSeverityEnumMap, json['severity']),
  value: (json['value'] as num).toDouble(),
  threshold: AlertThreshold.fromJson(json['threshold'] as Map<String, dynamic>),
  status:
      $enumDecodeNullable(_$AlertStatusEnumMap, json['status']) ??
      AlertStatus.new_,
  acknowledgedBy: json['acknowledgedBy'] as String?,
  recentTelemetry:
      (json['recentTelemetry'] as List<dynamic>?)
          ?.map((e) => TelemetryData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  acknowledgedAt: _nullableTimestampFromJson(json['acknowledgedAt']),
);

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'alertId': instance.id,
      'userId': instance.userId,
      'cattleId': instance.cattleId,
      'cattleName': instance.cattleName,
      'tagId': instance.tagId,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': _$AlertTypeEnumMap[instance.type]!,
      'severity': _$AlertSeverityEnumMap[instance.severity]!,
      'value': instance.value,
      'threshold': instance.threshold,
      'status': _$AlertStatusEnumMap[instance.status]!,
      'acknowledgedBy': instance.acknowledgedBy,
      'recentTelemetry': instance.recentTelemetry,
      'acknowledgedAt': instance.acknowledgedAt?.toIso8601String(),
    };

const _$AlertTypeEnumMap = {
  AlertType.temperature: 'temperature',
  AlertType.pulseRate: 'pulseRate',
  AlertType.motion: 'motion',
  AlertType.battery: 'battery',
};

const _$AlertSeverityEnumMap = {
  AlertSeverity.low: 'low',
  AlertSeverity.medium: 'medium',
  AlertSeverity.high: 'high',
};

const _$AlertStatusEnumMap = {
  AlertStatus.new_: 'new',
  AlertStatus.acknowledged: 'acknowledged',
};
