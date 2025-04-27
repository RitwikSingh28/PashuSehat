// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
  id: json['id'] as String,
  cattleId: json['cattleId'] as String,
  cattleName: json['cattleName'] as String,
  tagId: json['tagId'] as String,
  timestamp: DateTime.parse(json['timestamp'] as String),
  type: $enumDecode(_$AlertTypeEnumMap, json['type']),
  value: (json['value'] as num).toDouble(),
);

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cattleId': instance.cattleId,
      'cattleName': instance.cattleName,
      'tagId': instance.tagId,
      'timestamp': instance.timestamp.toIso8601String(),
      'type': _$AlertTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$AlertTypeEnumMap = {
  AlertType.temperature: 'temperature',
  AlertType.pulseRate: 'pulseRate',
  AlertType.motion: 'motion',
};
