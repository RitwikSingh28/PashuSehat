// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cattle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CattleImpl _$$CattleImplFromJson(Map<String, dynamic> json) => _$CattleImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  tagId: json['tagId'] as String,
  dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
  notes:
      (json['notes'] as List<dynamic>)
          .map((e) => CattleNote.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$CattleImplToJson(_$CattleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagId': instance.tagId,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'notes': instance.notes,
    };

_$CattleNoteImpl _$$CattleNoteImplFromJson(Map<String, dynamic> json) =>
    _$CattleNoteImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$CattleNoteImplToJson(_$CattleNoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
    };
