// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FarmLocationImpl _$$FarmLocationImplFromJson(Map<String, dynamic> json) =>
    _$FarmLocationImpl(
      address: json['address'] as String,
      pinCode: json['pinCode'] as String,
    );

Map<String, dynamic> _$$FarmLocationImplToJson(_$FarmLocationImpl instance) =>
    <String, dynamic>{'address': instance.address, 'pinCode': instance.pinCode};

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  userId: json['userId'] as String,
  phoneNumber: json['phoneNumber'] as String,
  name: json['name'] as String,
  farmLocation: FarmLocation.fromJson(
    json['farmLocation'] as Map<String, dynamic>,
  ),
  isVerified: json['isVerified'] as bool? ?? false,
  createdAt: _dateFromMillis(json['createdAt']),
  lastLogin: _dateFromMillis(json['lastLogin']),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'farmLocation': instance.farmLocation,
      'isVerified': instance.isVerified,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastLogin': instance.lastLogin?.toIso8601String(),
    };
