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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get tagId => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  List<CattleNote> get notes => throw _privateConstructorUsedError;

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
    String id,
    String name,
    String tagId,
    DateTime dateOfBirth,
    List<CattleNote> notes,
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
    Object? id = null,
    Object? name = null,
    Object? tagId = null,
    Object? dateOfBirth = null,
    Object? notes = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            tagId:
                null == tagId
                    ? _value.tagId
                    : tagId // ignore: cast_nullable_to_non_nullable
                        as String,
            dateOfBirth:
                null == dateOfBirth
                    ? _value.dateOfBirth
                    : dateOfBirth // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            notes:
                null == notes
                    ? _value.notes
                    : notes // ignore: cast_nullable_to_non_nullable
                        as List<CattleNote>,
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
    String id,
    String name,
    String tagId,
    DateTime dateOfBirth,
    List<CattleNote> notes,
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
    Object? id = null,
    Object? name = null,
    Object? tagId = null,
    Object? dateOfBirth = null,
    Object? notes = null,
  }) {
    return _then(
      _$CattleImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        tagId:
            null == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String,
        dateOfBirth:
            null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        notes:
            null == notes
                ? _value._notes
                : notes // ignore: cast_nullable_to_non_nullable
                    as List<CattleNote>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CattleImpl implements _Cattle {
  const _$CattleImpl({
    required this.id,
    required this.name,
    required this.tagId,
    required this.dateOfBirth,
    required final List<CattleNote> notes,
  }) : _notes = notes;

  factory _$CattleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CattleImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String tagId;
  @override
  final DateTime dateOfBirth;
  final List<CattleNote> _notes;
  @override
  List<CattleNote> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'Cattle(id: $id, name: $name, tagId: $tagId, dateOfBirth: $dateOfBirth, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CattleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    tagId,
    dateOfBirth,
    const DeepCollectionEquality().hash(_notes),
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
    required final String id,
    required final String name,
    required final String tagId,
    required final DateTime dateOfBirth,
    required final List<CattleNote> notes,
  }) = _$CattleImpl;

  factory _Cattle.fromJson(Map<String, dynamic> json) = _$CattleImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get tagId;
  @override
  DateTime get dateOfBirth;
  @override
  List<CattleNote> get notes;

  /// Create a copy of Cattle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CattleImplCopyWith<_$CattleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CattleNote _$CattleNoteFromJson(Map<String, dynamic> json) {
  return _CattleNote.fromJson(json);
}

/// @nodoc
mixin _$CattleNote {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this CattleNote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CattleNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CattleNoteCopyWith<CattleNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CattleNoteCopyWith<$Res> {
  factory $CattleNoteCopyWith(
    CattleNote value,
    $Res Function(CattleNote) then,
  ) = _$CattleNoteCopyWithImpl<$Res, CattleNote>;
  @useResult
  $Res call({String id, String content, DateTime timestamp});
}

/// @nodoc
class _$CattleNoteCopyWithImpl<$Res, $Val extends CattleNote>
    implements $CattleNoteCopyWith<$Res> {
  _$CattleNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CattleNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CattleNoteImplCopyWith<$Res>
    implements $CattleNoteCopyWith<$Res> {
  factory _$$CattleNoteImplCopyWith(
    _$CattleNoteImpl value,
    $Res Function(_$CattleNoteImpl) then,
  ) = __$$CattleNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content, DateTime timestamp});
}

/// @nodoc
class __$$CattleNoteImplCopyWithImpl<$Res>
    extends _$CattleNoteCopyWithImpl<$Res, _$CattleNoteImpl>
    implements _$$CattleNoteImplCopyWith<$Res> {
  __$$CattleNoteImplCopyWithImpl(
    _$CattleNoteImpl _value,
    $Res Function(_$CattleNoteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
  }) {
    return _then(
      _$CattleNoteImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CattleNoteImpl implements _CattleNote {
  const _$CattleNoteImpl({
    required this.id,
    required this.content,
    required this.timestamp,
  });

  factory _$CattleNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CattleNoteImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'CattleNote(id: $id, content: $content, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CattleNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, timestamp);

  /// Create a copy of CattleNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CattleNoteImplCopyWith<_$CattleNoteImpl> get copyWith =>
      __$$CattleNoteImplCopyWithImpl<_$CattleNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CattleNoteImplToJson(this);
  }
}

abstract class _CattleNote implements CattleNote {
  const factory _CattleNote({
    required final String id,
    required final String content,
    required final DateTime timestamp,
  }) = _$CattleNoteImpl;

  factory _CattleNote.fromJson(Map<String, dynamic> json) =
      _$CattleNoteImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  DateTime get timestamp;

  /// Create a copy of CattleNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CattleNoteImplCopyWith<_$CattleNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
