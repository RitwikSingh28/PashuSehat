// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      AlertStatus.newAlert,
  acknowledgedBy: json['acknowledgedBy'] as String?,
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
  AlertStatus.newAlert: 'new',
  AlertStatus.acknowledged: 'acknowledged',
};
