// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AlertState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertStateCopyWith<$Res> {
  factory $AlertStateCopyWith(
    AlertState value,
    $Res Function(AlertState) then,
  ) = _$AlertStateCopyWithImpl<$Res, AlertState>;
}

/// @nodoc
class _$AlertStateCopyWithImpl<$Res, $Val extends AlertState>
    implements $AlertStateCopyWith<$Res> {
  _$AlertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AlertState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AlertState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AlertState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AlertState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<Alert> alerts,
    AlertStatus? filterStatus,
    DateTime? startDate,
    DateTime? endDate,
  });
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? filterStatus = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(
      _$LoadedImpl(
        alerts:
            null == alerts
                ? _value._alerts
                : alerts // ignore: cast_nullable_to_non_nullable
                    as List<Alert>,
        filterStatus:
            freezed == filterStatus
                ? _value.filterStatus
                : filterStatus // ignore: cast_nullable_to_non_nullable
                    as AlertStatus?,
        startDate:
            freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endDate:
            freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required final List<Alert> alerts,
    this.filterStatus,
    this.startDate,
    this.endDate,
  }) : _alerts = alerts;

  final List<Alert> _alerts;
  @override
  List<Alert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  final AlertStatus? filterStatus;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'AlertState.loaded(alerts: $alerts, filterStatus: $filterStatus, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            (identical(other.filterStatus, filterStatus) ||
                other.filterStatus == filterStatus) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_alerts),
    filterStatus,
    startDate,
    endDate,
  );

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return loaded(alerts, filterStatus, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return loaded?.call(alerts, filterStatus, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(alerts, filterStatus, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AlertState {
  const factory _Loaded({
    required final List<Alert> alerts,
    final AlertStatus? filterStatus,
    final DateTime? startDate,
    final DateTime? endDate,
  }) = _$LoadedImpl;

  List<Alert> get alerts;
  AlertStatus? get filterStatus;
  DateTime? get startDate;
  DateTime? get endDate;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AlertState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AlertState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcknowledgingImplCopyWith<$Res> {
  factory _$$AcknowledgingImplCopyWith(
    _$AcknowledgingImpl value,
    $Res Function(_$AcknowledgingImpl) then,
  ) = __$$AcknowledgingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcknowledgingImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$AcknowledgingImpl>
    implements _$$AcknowledgingImplCopyWith<$Res> {
  __$$AcknowledgingImplCopyWithImpl(
    _$AcknowledgingImpl _value,
    $Res Function(_$AcknowledgingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AcknowledgingImpl implements _Acknowledging {
  const _$AcknowledgingImpl();

  @override
  String toString() {
    return 'AlertState.acknowledging()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcknowledgingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return acknowledging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return acknowledging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (acknowledging != null) {
      return acknowledging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return acknowledging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return acknowledging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (acknowledging != null) {
      return acknowledging(this);
    }
    return orElse();
  }
}

abstract class _Acknowledging implements AlertState {
  const factory _Acknowledging() = _$AcknowledgingImpl;
}

/// @nodoc
abstract class _$$AcknowledgedImplCopyWith<$Res> {
  factory _$$AcknowledgedImplCopyWith(
    _$AcknowledgedImpl value,
    $Res Function(_$AcknowledgedImpl) then,
  ) = __$$AcknowledgedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Alert alert});

  $AlertCopyWith<$Res> get alert;
}

/// @nodoc
class __$$AcknowledgedImplCopyWithImpl<$Res>
    extends _$AlertStateCopyWithImpl<$Res, _$AcknowledgedImpl>
    implements _$$AcknowledgedImplCopyWith<$Res> {
  __$$AcknowledgedImplCopyWithImpl(
    _$AcknowledgedImpl _value,
    $Res Function(_$AcknowledgedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? alert = null}) {
    return _then(
      _$AcknowledgedImpl(
        null == alert
            ? _value.alert
            : alert // ignore: cast_nullable_to_non_nullable
                as Alert,
      ),
    );
  }

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlertCopyWith<$Res> get alert {
    return $AlertCopyWith<$Res>(_value.alert, (value) {
      return _then(_value.copyWith(alert: value));
    });
  }
}

/// @nodoc

class _$AcknowledgedImpl implements _Acknowledged {
  const _$AcknowledgedImpl(this.alert);

  @override
  final Alert alert;

  @override
  String toString() {
    return 'AlertState.acknowledged(alert: $alert)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcknowledgedImpl &&
            (identical(other.alert, alert) || other.alert == alert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alert);

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcknowledgedImplCopyWith<_$AcknowledgedImpl> get copyWith =>
      __$$AcknowledgedImplCopyWithImpl<_$AcknowledgedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() acknowledging,
    required TResult Function(Alert alert) acknowledged,
  }) {
    return acknowledged(alert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? acknowledging,
    TResult? Function(Alert alert)? acknowledged,
  }) {
    return acknowledged?.call(alert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<Alert> alerts,
      AlertStatus? filterStatus,
      DateTime? startDate,
      DateTime? endDate,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? acknowledging,
    TResult Function(Alert alert)? acknowledged,
    required TResult orElse(),
  }) {
    if (acknowledged != null) {
      return acknowledged(alert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Acknowledging value) acknowledging,
    required TResult Function(_Acknowledged value) acknowledged,
  }) {
    return acknowledged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Acknowledging value)? acknowledging,
    TResult? Function(_Acknowledged value)? acknowledged,
  }) {
    return acknowledged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Acknowledging value)? acknowledging,
    TResult Function(_Acknowledged value)? acknowledged,
    required TResult orElse(),
  }) {
    if (acknowledged != null) {
      return acknowledged(this);
    }
    return orElse();
  }
}

abstract class _Acknowledged implements AlertState {
  const factory _Acknowledged(final Alert alert) = _$AcknowledgedImpl;

  Alert get alert;

  /// Create a copy of AlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcknowledgedImplCopyWith<_$AcknowledgedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
