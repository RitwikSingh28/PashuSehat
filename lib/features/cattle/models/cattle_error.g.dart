// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cattle_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CattleErrorImpl _$$CattleErrorImplFromJson(Map<String, dynamic> json) =>
    _$CattleErrorImpl(
      error: json['error'] as String,
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$CattleErrorImplToJson(_$CattleErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'details': instance.details,
    };
