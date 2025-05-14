// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthErrorImpl _$$AuthErrorImplFromJson(Map<String, dynamic> json) =>
    _$AuthErrorImpl(
      error: json['error'] as String,
      message: json['message'] as String,
      details: json['details'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$AuthErrorImplToJson(_$AuthErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'details': instance.details,
    };
