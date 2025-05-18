// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cattle_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CattleError _$CattleErrorFromJson(Map<String, dynamic> json) {
  return _CattleError.fromJson(json);
}

/// @nodoc
mixin _$CattleError {
  String get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get details => throw _privateConstructorUsedError;

  /// Serializes this CattleError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CattleError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CattleErrorCopyWith<CattleError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CattleErrorCopyWith<$Res> {
  factory $CattleErrorCopyWith(
    CattleError value,
    $Res Function(CattleError) then,
  ) = _$CattleErrorCopyWithImpl<$Res, CattleError>;
  @useResult
  $Res call({String error, String message, Map<String, dynamic>? details});
}

/// @nodoc
class _$CattleErrorCopyWithImpl<$Res, $Val extends CattleError>
    implements $CattleErrorCopyWith<$Res> {
  _$CattleErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CattleError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(
      _value.copyWith(
            error:
                null == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            details:
                freezed == details
                    ? _value.details
                    : details // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CattleErrorImplCopyWith<$Res>
    implements $CattleErrorCopyWith<$Res> {
  factory _$$CattleErrorImplCopyWith(
    _$CattleErrorImpl value,
    $Res Function(_$CattleErrorImpl) then,
  ) = __$$CattleErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, String message, Map<String, dynamic>? details});
}

/// @nodoc
class __$$CattleErrorImplCopyWithImpl<$Res>
    extends _$CattleErrorCopyWithImpl<$Res, _$CattleErrorImpl>
    implements _$$CattleErrorImplCopyWith<$Res> {
  __$$CattleErrorImplCopyWithImpl(
    _$CattleErrorImpl _value,
    $Res Function(_$CattleErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CattleError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(
      _$CattleErrorImpl(
        error:
            null == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        details:
            freezed == details
                ? _value._details
                : details // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CattleErrorImpl implements _CattleError {
  const _$CattleErrorImpl({
    required this.error,
    required this.message,
    final Map<String, dynamic>? details,
  }) : _details = details;

  factory _$CattleErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CattleErrorImplFromJson(json);

  @override
  final String error;
  @override
  final String message;
  final Map<String, dynamic>? _details;
  @override
  Map<String, dynamic>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableMapView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'CattleError(error: $error, message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CattleErrorImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    error,
    message,
    const DeepCollectionEquality().hash(_details),
  );

  /// Create a copy of CattleError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CattleErrorImplCopyWith<_$CattleErrorImpl> get copyWith =>
      __$$CattleErrorImplCopyWithImpl<_$CattleErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CattleErrorImplToJson(this);
  }
}

abstract class _CattleError implements CattleError {
  const factory _CattleError({
    required final String error,
    required final String message,
    final Map<String, dynamic>? details,
  }) = _$CattleErrorImpl;

  factory _CattleError.fromJson(Map<String, dynamic> json) =
      _$CattleErrorImpl.fromJson;

  @override
  String get error;
  @override
  String get message;
  @override
  Map<String, dynamic>? get details;

  /// Create a copy of CattleError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CattleErrorImplCopyWith<_$CattleErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
