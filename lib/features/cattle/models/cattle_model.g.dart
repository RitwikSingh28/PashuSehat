// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cattle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CattleImpl _$$CattleImplFromJson(Map<String, dynamic> json) => _$CattleImpl(
  cattleId: json['cattleId'] as String,
  userId: json['userId'] as String,
  tagId: json['tagId'] as String,
  name: json['name'] as String,
  dateOfBirth: _dateFromMillis(json['dateOfBirth']),
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  ageGroup: $enumDecode(_$AgeGroupEnumMap, json['ageGroup']),
  breed: json['breed'] as String,
  governmentId: json['governmentId'] as String?,
  fatherName: json['fatherName'] as String?,
  motherName: json['motherName'] as String?,
  notes:
      (json['notes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  createdAt: _dateFromMillis(json['createdAt']),
  updatedAt: _dateFromMillis(json['updatedAt']),
);

Map<String, dynamic> _$$CattleImplToJson(_$CattleImpl instance) =>
    <String, dynamic>{
      'cattleId': instance.cattleId,
      'userId': instance.userId,
      'tagId': instance.tagId,
      'name': instance.name,
      'dateOfBirth': _dateToIso(instance.dateOfBirth),
      'gender': _$GenderEnumMap[instance.gender]!,
      'ageGroup': _$AgeGroupEnumMap[instance.ageGroup]!,
      'breed': instance.breed,
      'governmentId': instance.governmentId,
      'fatherName': instance.fatherName,
      'motherName': instance.motherName,
      'notes': instance.notes,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

const _$AgeGroupEnumMap = {
  AgeGroup.calf: 'CALF',
  AgeGroup.adult: 'ADULT',
  AgeGroup.retired: 'RETIRED',
};
