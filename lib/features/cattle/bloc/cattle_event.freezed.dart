// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cattle_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CattleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CattleEventCopyWith<$Res> {
  factory $CattleEventCopyWith(
    CattleEvent value,
    $Res Function(CattleEvent) then,
  ) = _$CattleEventCopyWithImpl<$Res, CattleEvent>;
}

/// @nodoc
class _$CattleEventCopyWithImpl<$Res, $Val extends CattleEvent>
    implements $CattleEventCopyWith<$Res> {
  _$CattleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCattleEventImplCopyWith<$Res> {
  factory _$$LoadCattleEventImplCopyWith(
    _$LoadCattleEventImpl value,
    $Res Function(_$LoadCattleEventImpl) then,
  ) = __$$LoadCattleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCattleEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$LoadCattleEventImpl>
    implements _$$LoadCattleEventImplCopyWith<$Res> {
  __$$LoadCattleEventImplCopyWithImpl(
    _$LoadCattleEventImpl _value,
    $Res Function(_$LoadCattleEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCattleEventImpl implements LoadCattleEvent {
  const _$LoadCattleEventImpl();

  @override
  String toString() {
    return 'CattleEvent.loadCattle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCattleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return loadCattle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return loadCattle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (loadCattle != null) {
      return loadCattle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return loadCattle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return loadCattle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (loadCattle != null) {
      return loadCattle(this);
    }
    return orElse();
  }
}

abstract class LoadCattleEvent implements CattleEvent {
  const factory LoadCattleEvent() = _$LoadCattleEventImpl;
}

/// @nodoc
abstract class _$$LoadSingleCattleEventImplCopyWith<$Res> {
  factory _$$LoadSingleCattleEventImplCopyWith(
    _$LoadSingleCattleEventImpl value,
    $Res Function(_$LoadSingleCattleEventImpl) then,
  ) = __$$LoadSingleCattleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cattleId});
}

/// @nodoc
class __$$LoadSingleCattleEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$LoadSingleCattleEventImpl>
    implements _$$LoadSingleCattleEventImplCopyWith<$Res> {
  __$$LoadSingleCattleEventImplCopyWithImpl(
    _$LoadSingleCattleEventImpl _value,
    $Res Function(_$LoadSingleCattleEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cattleId = null}) {
    return _then(
      _$LoadSingleCattleEventImpl(
        null == cattleId
            ? _value.cattleId
            : cattleId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$LoadSingleCattleEventImpl implements LoadSingleCattleEvent {
  const _$LoadSingleCattleEventImpl(this.cattleId);

  @override
  final String cattleId;

  @override
  String toString() {
    return 'CattleEvent.loadSingleCattle(cattleId: $cattleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSingleCattleEventImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cattleId);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSingleCattleEventImplCopyWith<_$LoadSingleCattleEventImpl>
  get copyWith =>
      __$$LoadSingleCattleEventImplCopyWithImpl<_$LoadSingleCattleEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return loadSingleCattle(cattleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return loadSingleCattle?.call(cattleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (loadSingleCattle != null) {
      return loadSingleCattle(cattleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return loadSingleCattle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return loadSingleCattle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (loadSingleCattle != null) {
      return loadSingleCattle(this);
    }
    return orElse();
  }
}

abstract class LoadSingleCattleEvent implements CattleEvent {
  const factory LoadSingleCattleEvent(final String cattleId) =
      _$LoadSingleCattleEventImpl;

  String get cattleId;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSingleCattleEventImplCopyWith<_$LoadSingleCattleEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCattleEventImplCopyWith<$Res> {
  factory _$$CreateCattleEventImplCopyWith(
    _$CreateCattleEventImpl value,
    $Res Function(_$CreateCattleEventImpl) then,
  ) = __$$CreateCattleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String tagId,
    String name,
    DateTime dateOfBirth,
    Gender gender,
    AgeGroup ageGroup,
    String breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String>? notes,
  });
}

/// @nodoc
class __$$CreateCattleEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$CreateCattleEventImpl>
    implements _$$CreateCattleEventImplCopyWith<$Res> {
  __$$CreateCattleEventImplCopyWithImpl(
    _$CreateCattleEventImpl _value,
    $Res Function(_$CreateCattleEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? name = null,
    Object? dateOfBirth = null,
    Object? gender = null,
    Object? ageGroup = null,
    Object? breed = null,
    Object? governmentId = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _$CreateCattleEventImpl(
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
            freezed == notes
                ? _value._notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc

class _$CreateCattleEventImpl implements CreateCattleEvent {
  const _$CreateCattleEventImpl({
    required this.tagId,
    required this.name,
    required this.dateOfBirth,
    required this.gender,
    required this.ageGroup,
    required this.breed,
    this.governmentId,
    this.fatherName,
    this.motherName,
    final List<String>? notes,
  }) : _notes = notes;

  @override
  final String tagId;
  @override
  final String name;
  @override
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
  final List<String>? _notes;
  @override
  List<String>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CattleEvent.createCattle(tagId: $tagId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, ageGroup: $ageGroup, breed: $breed, governmentId: $governmentId, fatherName: $fatherName, motherName: $motherName, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCattleEventImpl &&
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
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
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
  );

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCattleEventImplCopyWith<_$CreateCattleEventImpl> get copyWith =>
      __$$CreateCattleEventImplCopyWithImpl<_$CreateCattleEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return createCattle(
      tagId,
      name,
      dateOfBirth,
      gender,
      ageGroup,
      breed,
      governmentId,
      fatherName,
      motherName,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return createCattle?.call(
      tagId,
      name,
      dateOfBirth,
      gender,
      ageGroup,
      breed,
      governmentId,
      fatherName,
      motherName,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (createCattle != null) {
      return createCattle(
        tagId,
        name,
        dateOfBirth,
        gender,
        ageGroup,
        breed,
        governmentId,
        fatherName,
        motherName,
        notes,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return createCattle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return createCattle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (createCattle != null) {
      return createCattle(this);
    }
    return orElse();
  }
}

abstract class CreateCattleEvent implements CattleEvent {
  const factory CreateCattleEvent({
    required final String tagId,
    required final String name,
    required final DateTime dateOfBirth,
    required final Gender gender,
    required final AgeGroup ageGroup,
    required final String breed,
    final String? governmentId,
    final String? fatherName,
    final String? motherName,
    final List<String>? notes,
  }) = _$CreateCattleEventImpl;

  String get tagId;
  String get name;
  DateTime get dateOfBirth;
  Gender get gender;
  AgeGroup get ageGroup;
  String get breed;
  String? get governmentId;
  String? get fatherName;
  String? get motherName;
  List<String>? get notes;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCattleEventImplCopyWith<_$CreateCattleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCattleEventImplCopyWith<$Res> {
  factory _$$UpdateCattleEventImplCopyWith(
    _$UpdateCattleEventImpl value,
    $Res Function(_$UpdateCattleEventImpl) then,
  ) = __$$UpdateCattleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String cattleId,
    String? tagId,
    String? name,
    DateTime? dateOfBirth,
    Gender? gender,
    AgeGroup? ageGroup,
    String? breed,
    String? governmentId,
    String? fatherName,
    String? motherName,
    List<String>? notes,
  });
}

/// @nodoc
class __$$UpdateCattleEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$UpdateCattleEventImpl>
    implements _$$UpdateCattleEventImplCopyWith<$Res> {
  __$$UpdateCattleEventImplCopyWithImpl(
    _$UpdateCattleEventImpl _value,
    $Res Function(_$UpdateCattleEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cattleId = null,
    Object? tagId = freezed,
    Object? name = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? ageGroup = freezed,
    Object? breed = freezed,
    Object? governmentId = freezed,
    Object? fatherName = freezed,
    Object? motherName = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _$UpdateCattleEventImpl(
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        tagId:
            freezed == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        dateOfBirth:
            freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as Gender?,
        ageGroup:
            freezed == ageGroup
                ? _value.ageGroup
                : ageGroup // ignore: cast_nullable_to_non_nullable
                    as AgeGroup?,
        breed:
            freezed == breed
                ? _value.breed
                : breed // ignore: cast_nullable_to_non_nullable
                    as String?,
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
            freezed == notes
                ? _value._notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateCattleEventImpl implements UpdateCattleEvent {
  const _$UpdateCattleEventImpl({
    required this.cattleId,
    this.tagId,
    this.name,
    this.dateOfBirth,
    this.gender,
    this.ageGroup,
    this.breed,
    this.governmentId,
    this.fatherName,
    this.motherName,
    final List<String>? notes,
  }) : _notes = notes;

  @override
  final String cattleId;
  @override
  final String? tagId;
  @override
  final String? name;
  @override
  final DateTime? dateOfBirth;
  @override
  final Gender? gender;
  @override
  final AgeGroup? ageGroup;
  @override
  final String? breed;
  @override
  final String? governmentId;
  @override
  final String? fatherName;
  @override
  final String? motherName;
  final List<String>? _notes;
  @override
  List<String>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CattleEvent.updateCattle(cattleId: $cattleId, tagId: $tagId, name: $name, dateOfBirth: $dateOfBirth, gender: $gender, ageGroup: $ageGroup, breed: $breed, governmentId: $governmentId, fatherName: $fatherName, motherName: $motherName, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCattleEventImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
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
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    cattleId,
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
  );

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCattleEventImplCopyWith<_$UpdateCattleEventImpl> get copyWith =>
      __$$UpdateCattleEventImplCopyWithImpl<_$UpdateCattleEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return updateCattle(
      cattleId,
      tagId,
      name,
      dateOfBirth,
      gender,
      ageGroup,
      breed,
      governmentId,
      fatherName,
      motherName,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return updateCattle?.call(
      cattleId,
      tagId,
      name,
      dateOfBirth,
      gender,
      ageGroup,
      breed,
      governmentId,
      fatherName,
      motherName,
      notes,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (updateCattle != null) {
      return updateCattle(
        cattleId,
        tagId,
        name,
        dateOfBirth,
        gender,
        ageGroup,
        breed,
        governmentId,
        fatherName,
        motherName,
        notes,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return updateCattle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return updateCattle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (updateCattle != null) {
      return updateCattle(this);
    }
    return orElse();
  }
}

abstract class UpdateCattleEvent implements CattleEvent {
  const factory UpdateCattleEvent({
    required final String cattleId,
    final String? tagId,
    final String? name,
    final DateTime? dateOfBirth,
    final Gender? gender,
    final AgeGroup? ageGroup,
    final String? breed,
    final String? governmentId,
    final String? fatherName,
    final String? motherName,
    final List<String>? notes,
  }) = _$UpdateCattleEventImpl;

  String get cattleId;
  String? get tagId;
  String? get name;
  DateTime? get dateOfBirth;
  Gender? get gender;
  AgeGroup? get ageGroup;
  String? get breed;
  String? get governmentId;
  String? get fatherName;
  String? get motherName;
  List<String>? get notes;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCattleEventImplCopyWith<_$UpdateCattleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNoteEventImplCopyWith<$Res> {
  factory _$$AddNoteEventImplCopyWith(
    _$AddNoteEventImpl value,
    $Res Function(_$AddNoteEventImpl) then,
  ) = __$$AddNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cattleId, String note});
}

/// @nodoc
class __$$AddNoteEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$AddNoteEventImpl>
    implements _$$AddNoteEventImplCopyWith<$Res> {
  __$$AddNoteEventImplCopyWithImpl(
    _$AddNoteEventImpl _value,
    $Res Function(_$AddNoteEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cattleId = null, Object? note = null}) {
    return _then(
      _$AddNoteEventImpl(
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        note:
            null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$AddNoteEventImpl implements AddNoteEvent {
  const _$AddNoteEventImpl({required this.cattleId, required this.note});

  @override
  final String cattleId;
  @override
  final String note;

  @override
  String toString() {
    return 'CattleEvent.addNote(cattleId: $cattleId, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNoteEventImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cattleId, note);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNoteEventImplCopyWith<_$AddNoteEventImpl> get copyWith =>
      __$$AddNoteEventImplCopyWithImpl<_$AddNoteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return addNote(cattleId, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return addNote?.call(cattleId, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(cattleId, note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return addNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return addNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (addNote != null) {
      return addNote(this);
    }
    return orElse();
  }
}

abstract class AddNoteEvent implements CattleEvent {
  const factory AddNoteEvent({
    required final String cattleId,
    required final String note,
  }) = _$AddNoteEventImpl;

  String get cattleId;
  String get note;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNoteEventImplCopyWith<_$AddNoteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCattleEventImplCopyWith<$Res> {
  factory _$$DeleteCattleEventImplCopyWith(
    _$DeleteCattleEventImpl value,
    $Res Function(_$DeleteCattleEventImpl) then,
  ) = __$$DeleteCattleEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cattleId});
}

/// @nodoc
class __$$DeleteCattleEventImplCopyWithImpl<$Res>
    extends _$CattleEventCopyWithImpl<$Res, _$DeleteCattleEventImpl>
    implements _$$DeleteCattleEventImplCopyWith<$Res> {
  __$$DeleteCattleEventImplCopyWithImpl(
    _$DeleteCattleEventImpl _value,
    $Res Function(_$DeleteCattleEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cattleId = null}) {
    return _then(
      _$DeleteCattleEventImpl(
        null == cattleId
            ? _value.cattleId
            : cattleId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteCattleEventImpl implements DeleteCattleEvent {
  const _$DeleteCattleEventImpl(this.cattleId);

  @override
  final String cattleId;

  @override
  String toString() {
    return 'CattleEvent.deleteCattle(cattleId: $cattleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCattleEventImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cattleId);

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCattleEventImplCopyWith<_$DeleteCattleEventImpl> get copyWith =>
      __$$DeleteCattleEventImplCopyWithImpl<_$DeleteCattleEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCattle,
    required TResult Function(String cattleId) loadSingleCattle,
    required TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    createCattle,
    required TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )
    updateCattle,
    required TResult Function(String cattleId, String note) addNote,
    required TResult Function(String cattleId) deleteCattle,
  }) {
    return deleteCattle(cattleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCattle,
    TResult? Function(String cattleId)? loadSingleCattle,
    TResult? Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult? Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult? Function(String cattleId, String note)? addNote,
    TResult? Function(String cattleId)? deleteCattle,
  }) {
    return deleteCattle?.call(cattleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCattle,
    TResult Function(String cattleId)? loadSingleCattle,
    TResult Function(
      String tagId,
      String name,
      DateTime dateOfBirth,
      Gender gender,
      AgeGroup ageGroup,
      String breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    createCattle,
    TResult Function(
      String cattleId,
      String? tagId,
      String? name,
      DateTime? dateOfBirth,
      Gender? gender,
      AgeGroup? ageGroup,
      String? breed,
      String? governmentId,
      String? fatherName,
      String? motherName,
      List<String>? notes,
    )?
    updateCattle,
    TResult Function(String cattleId, String note)? addNote,
    TResult Function(String cattleId)? deleteCattle,
    required TResult orElse(),
  }) {
    if (deleteCattle != null) {
      return deleteCattle(cattleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCattleEvent value) loadCattle,
    required TResult Function(LoadSingleCattleEvent value) loadSingleCattle,
    required TResult Function(CreateCattleEvent value) createCattle,
    required TResult Function(UpdateCattleEvent value) updateCattle,
    required TResult Function(AddNoteEvent value) addNote,
    required TResult Function(DeleteCattleEvent value) deleteCattle,
  }) {
    return deleteCattle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCattleEvent value)? loadCattle,
    TResult? Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult? Function(CreateCattleEvent value)? createCattle,
    TResult? Function(UpdateCattleEvent value)? updateCattle,
    TResult? Function(AddNoteEvent value)? addNote,
    TResult? Function(DeleteCattleEvent value)? deleteCattle,
  }) {
    return deleteCattle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCattleEvent value)? loadCattle,
    TResult Function(LoadSingleCattleEvent value)? loadSingleCattle,
    TResult Function(CreateCattleEvent value)? createCattle,
    TResult Function(UpdateCattleEvent value)? updateCattle,
    TResult Function(AddNoteEvent value)? addNote,
    TResult Function(DeleteCattleEvent value)? deleteCattle,
    required TResult orElse(),
  }) {
    if (deleteCattle != null) {
      return deleteCattle(this);
    }
    return orElse();
  }
}

abstract class DeleteCattleEvent implements CattleEvent {
  const factory DeleteCattleEvent(final String cattleId) =
      _$DeleteCattleEventImpl;

  String get cattleId;

  /// Create a copy of CattleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCattleEventImplCopyWith<_$DeleteCattleEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
