// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthErrorImpl _$$AuthErrorImplFromJson(Map<String, dynamic> json) =>
    _$AuthErrorImpl(
      error: json['error'] as String? ?? 'UNKNOWN_ERROR',
      message: json['message'] as String? ?? 'An unknown error occurred',
    );

Map<String, dynamic> _$$AuthErrorImplToJson(_$AuthErrorImpl instance) =>
    <String, dynamic>{'error': instance.error, 'message': instance.message};
