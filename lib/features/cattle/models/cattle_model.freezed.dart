// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cattle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Cattle _$CattleFromJson(Map<String, dynamic> json) {
  return _Cattle.fromJson(json);
}

/// @nodoc
mixin _$Cattle {
  String get cattleId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tagId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  AgeGroup get ageGroup => throw _privateConstructorUsedError;
  String get breed => throw _privateConstructorUsedError;
  String? get governmentId => throw _privateConstructorUsedError;
  String? get fatherName => throw _privateConstructorUsedError;
  String? get motherName => throw _privateConstructorUsedError;
  List<String> get notes => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Cattle to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CattleCopyWith<Cattle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CattleCopyWith<$Res> {
  factory $CattleCopyWith(Cattle value, $Res Function(Cattle) then) =
      _$CattleCopyWithImpl<$Res, Cattle>;
  @useResult
  $Res call({
    String cattleId,
    String userId,
    String tagId,
    String name,
    @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
    DateTime dateOfBirth,
    Gender gender,
    AgeGroup ageGroup,
    String breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String> notes,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? updatedAt,
  });
}

/// @nodoc
class _$CattleCopyWithImpl<$Res, $Val extends Cattle>
    implements $CattleCopyWith<$Res> {
  _$CattleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cattleId = null,
    Object? userId = null,
    Object? tagId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? ageGroup = null,
    Object? breed = null,
    Object? governmentId = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? notes = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            cattleId:
                null == cattleId
                    ? _value.cattleId
                    : cattleId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            tagId:
                null == tagId
                    ? _value.tagId
                    : tagId // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            dateOfBirth:
                null == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as Gender,
            ageGroup:
                null == ageGroup
                    ? _value.ageGroup
                    : ageGroup // ignore: cast_nullable_to_non_nullable
                        as AgeGroup,
            breed:
                null == breed
                    ? _value.breed
                    : breed // ignore: cast_nullable_to_non_nullable
                        as String,
            governmentId:
                freezed == governmentId
                    ? _value.governmentId
                    : governmentId // ignore: cast_nullable_to_non_nullable
                        as String?,
            fatherName:
                freezed == fatherName
                    ? _value.fatherName
                    : fatherName // ignore: cast_nullable_to_non_nullable
                        as String?,
            motherName:
                freezed == motherName
                    ? _value.motherName
                    : motherName // ignore: cast_nullable_to_non_nullable
                        as String?,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CattleImplCopyWith<$Res> implements $CattleCopyWith<$Res> {
  factory _$$CattleImplCopyWith(
    _$CattleImpl value,
    $Res Function(_$CattleImpl) then,
  ) = __$$CattleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String cattleId,
    String userId,
    String tagId,
    String name,
    @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
    DateTime dateOfBirth,
    Gender gender,
    AgeGroup ageGroup,
    String breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String> notes,
    @JsonKey(fromJson: _dateFromMillis) DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) DateTime? updatedAt,
  });
}

/// @nodoc
class __$$CattleImplCopyWithImpl<$Res>
    extends _$CattleCopyWithImpl<$Res, _$CattleImpl>
    implements _$$CattleImplCopyWith<$Res> {
  __$$CattleImplCopyWithImpl(
    _$CattleImpl _value,
    $Res Function(_$CattleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cattleId = null,
    Object? userId = null,
    Object? tagId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? ageGroup = null,
    Object? breed = null,
    Object? governmentId = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? notes = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$CattleImpl(
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        tagId:
            null == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        dateOfBirth:
            null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as Gender,
        ageGroup:
            null == ageGroup
                ? _value.ageGroup
                : ageGroup // ignore: cast_nullable_to_non_nullable
                    as AgeGroup,
        breed:
            null == breed
                ? _value.breed
                : breed // ignore: cast_nullable_to_non_nullable
                    as String,
        governmentId:
            freezed == governmentId
                ? _value.governmentId
                : governmentId // ignore: cast_nullable_to_non_nullable
                    as String?,
        fatherName:
            freezed == fatherName
                ? _value.fatherName
                : fatherName // ignore: cast_nullable_to_non_nullable
                    as String?,
        motherName:
            freezed == motherName
                ? _value.motherName
                : motherName // ignore: cast_nullable_to_non_nullable
                    as String?,
        notes:
            null == notes
                ? _value._notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CattleImpl implements _Cattle {
  const _$CattleImpl({
    required this.cattleId,
    required this.userId,
    required this.tagId,
    required this.name,
    @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
    required this.dateOfBirth,
    required this.gender,
    required this.ageGroup,
    required this.breed,
    this.governmentId,
    this.fatherName,
    this.motherName,
    final List<String> notes = const [],
    @JsonKey(fromJson: _dateFromMillis) this.createdAt,
    @JsonKey(fromJson: _dateFromMillis) this.updatedAt,
  }) : _notes = notes;

  factory _$CattleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CattleImplFromJson(json);

  @override
  final String cattleId;
  @override
  final String userId;
  @override
  final String tagId;
  @override
  final String name;
  @override
  @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
  final DateTime dateOfBirth;
  @override
  final Gender gender;
  @override
  final AgeGroup ageGroup;
  @override
  final String breed;
  @override
  final String? governmentId;
  @override
  final String? fatherName;
  @override
  final String? motherName;
  final List<String> _notes;
  @override
  @JsonKey()
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey(fromJson: _dateFromMillis)
  final DateTime? createdAt;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Cattle(cattleId: $cattleId, userId: $userId, tagId: $tagId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, ageGroup: $ageGroup, breed: $breed, governmentId: $governmentId, fatherName: $fatherName, motherName: $motherName, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CattleImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.governmentId, governmentId) ||
                other.governmentId == governmentId) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.motherName, motherName) ||
                other.motherName == motherName) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cattleId,
    userId,
    tagId,
    name,
    dateOfBirth,
    gender,
    ageGroup,
    breed,
    governmentId,
    fatherName,
    motherName,
    const DeepCollectionEquality().hash(_notes),
    createdAt,
    updatedAt,
  );

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CattleImplCopyWith<_$CattleImpl> get copyWith =>
      __$$CattleImplCopyWithImpl<_$CattleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CattleImplToJson(this);
  }
}

abstract class _Cattle implements Cattle {
  const factory _Cattle({
    required final String cattleId,
    required final String userId,
    required final String tagId,
    required final String name,
    @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
    required final DateTime dateOfBirth,
    required final Gender gender,
    required final AgeGroup ageGroup,
    required final String breed,
    final String? governmentId,
    final String? fatherName,
    final String? motherName,
    final List<String> notes,
    @JsonKey(fromJson: _dateFromMillis) final DateTime? createdAt,
    @JsonKey(fromJson: _dateFromMillis) final DateTime? updatedAt,
  }) = _$CattleImpl;

  factory _Cattle.fromJson(Map<String, dynamic> json) = _$CattleImpl.fromJson;

  @override
  String get cattleId;
  @override
  String get userId;
  @override
  String get tagId;
  @override
  String get name;
  @override
  @JsonKey(fromJson: _dateFromMillis, toJson: _dateToIso)
  DateTime get dateOfBirth;
  @override
  Gender get gender;
  @override
  AgeGroup get ageGroup;
  @override
  String get breed;
  @override
  String? get governmentId;
  @override
  String? get fatherName;
  @override
  String? get motherName;
  @override
  List<String> get notes;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get createdAt;
  @override
  @JsonKey(fromJson: _dateFromMillis)
  DateTime? get updatedAt;

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CattleImplCopyWith<_$CattleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
