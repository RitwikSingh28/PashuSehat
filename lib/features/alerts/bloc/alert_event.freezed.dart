// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AlertEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchUserAlerts,
    required TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchCattleAlerts,
    required TResult Function(String alertId) acknowledgeAlert,
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    filterAlerts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult? Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult? Function(String alertId)? acknowledgeAlert,
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult Function(String alertId)? acknowledgeAlert,
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserAlerts value) fetchUserAlerts,
    required TResult Function(FetchCattleAlerts value) fetchCattleAlerts,
    required TResult Function(AcknowledgeAlert value) acknowledgeAlert,
    required TResult Function(FilterAlerts value) filterAlerts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult? Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult? Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult? Function(FilterAlerts value)? filterAlerts,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult Function(FilterAlerts value)? filterAlerts,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertEventCopyWith<$Res> {
  factory $AlertEventCopyWith(
    AlertEvent value,
    $Res Function(AlertEvent) then,
  ) = _$AlertEventCopyWithImpl<$Res, AlertEvent>;
}

/// @nodoc
class _$AlertEventCopyWithImpl<$Res, $Val extends AlertEvent>
    implements $AlertEventCopyWith<$Res> {
  _$AlertEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchUserAlertsImplCopyWith<$Res> {
  factory _$$FetchUserAlertsImplCopyWith(
    _$FetchUserAlertsImpl value,
    $Res Function(_$FetchUserAlertsImpl) then,
  ) = __$$FetchUserAlertsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertStatus? status, DateTime? startDate, DateTime? endDate});
}

/// @nodoc
class __$$FetchUserAlertsImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$FetchUserAlertsImpl>
    implements _$$FetchUserAlertsImplCopyWith<$Res> {
  __$$FetchUserAlertsImplCopyWithImpl(
    _$FetchUserAlertsImpl _value,
    $Res Function(_$FetchUserAlertsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(
      _$FetchUserAlertsImpl(
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
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

class _$FetchUserAlertsImpl implements FetchUserAlerts {
  const _$FetchUserAlertsImpl({this.status, this.startDate, this.endDate});

  @override
  final AlertStatus? status;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'AlertEvent.fetchUserAlerts(status: $status, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserAlertsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, startDate, endDate);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserAlertsImplCopyWith<_$FetchUserAlertsImpl> get copyWith =>
      __$$FetchUserAlertsImplCopyWithImpl<_$FetchUserAlertsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchUserAlerts,
    required TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchCattleAlerts,
    required TResult Function(String alertId) acknowledgeAlert,
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    filterAlerts,
  }) {
    return fetchUserAlerts(status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult? Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult? Function(String alertId)? acknowledgeAlert,
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
  }) {
    return fetchUserAlerts?.call(status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult Function(String alertId)? acknowledgeAlert,
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
    required TResult orElse(),
  }) {
    if (fetchUserAlerts != null) {
      return fetchUserAlerts(status, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserAlerts value) fetchUserAlerts,
    required TResult Function(FetchCattleAlerts value) fetchCattleAlerts,
    required TResult Function(AcknowledgeAlert value) acknowledgeAlert,
    required TResult Function(FilterAlerts value) filterAlerts,
  }) {
    return fetchUserAlerts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult? Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult? Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult? Function(FilterAlerts value)? filterAlerts,
  }) {
    return fetchUserAlerts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult Function(FilterAlerts value)? filterAlerts,
    required TResult orElse(),
  }) {
    if (fetchUserAlerts != null) {
      return fetchUserAlerts(this);
    }
    return orElse();
  }
}

abstract class FetchUserAlerts implements AlertEvent {
  const factory FetchUserAlerts({
    final AlertStatus? status,
    final DateTime? startDate,
    final DateTime? endDate,
  }) = _$FetchUserAlertsImpl;

  AlertStatus? get status;
  DateTime? get startDate;
  DateTime? get endDate;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchUserAlertsImplCopyWith<_$FetchUserAlertsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCattleAlertsImplCopyWith<$Res> {
  factory _$$FetchCattleAlertsImplCopyWith(
    _$FetchCattleAlertsImpl value,
    $Res Function(_$FetchCattleAlertsImpl) then,
  ) = __$$FetchCattleAlertsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String cattleId,
    AlertStatus? status,
    DateTime? startDate,
    DateTime? endDate,
  });
}

/// @nodoc
class __$$FetchCattleAlertsImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$FetchCattleAlertsImpl>
    implements _$$FetchCattleAlertsImplCopyWith<$Res> {
  __$$FetchCattleAlertsImplCopyWithImpl(
    _$FetchCattleAlertsImpl _value,
    $Res Function(_$FetchCattleAlertsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cattleId = null,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(
      _$FetchCattleAlertsImpl(
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
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

class _$FetchCattleAlertsImpl implements FetchCattleAlerts {
  const _$FetchCattleAlertsImpl({
    required this.cattleId,
    this.status,
    this.startDate,
    this.endDate,
  });

  @override
  final String cattleId;
  @override
  final AlertStatus? status;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'AlertEvent.fetchCattleAlerts(cattleId: $cattleId, status: $status, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCattleAlertsImpl &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cattleId, status, startDate, endDate);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCattleAlertsImplCopyWith<_$FetchCattleAlertsImpl> get copyWith =>
      __$$FetchCattleAlertsImplCopyWithImpl<_$FetchCattleAlertsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchUserAlerts,
    required TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchCattleAlerts,
    required TResult Function(String alertId) acknowledgeAlert,
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    filterAlerts,
  }) {
    return fetchCattleAlerts(cattleId, status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult? Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult? Function(String alertId)? acknowledgeAlert,
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
  }) {
    return fetchCattleAlerts?.call(cattleId, status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult Function(String alertId)? acknowledgeAlert,
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
    required TResult orElse(),
  }) {
    if (fetchCattleAlerts != null) {
      return fetchCattleAlerts(cattleId, status, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserAlerts value) fetchUserAlerts,
    required TResult Function(FetchCattleAlerts value) fetchCattleAlerts,
    required TResult Function(AcknowledgeAlert value) acknowledgeAlert,
    required TResult Function(FilterAlerts value) filterAlerts,
  }) {
    return fetchCattleAlerts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult? Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult? Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult? Function(FilterAlerts value)? filterAlerts,
  }) {
    return fetchCattleAlerts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult Function(FilterAlerts value)? filterAlerts,
    required TResult orElse(),
  }) {
    if (fetchCattleAlerts != null) {
      return fetchCattleAlerts(this);
    }
    return orElse();
  }
}

abstract class FetchCattleAlerts implements AlertEvent {
  const factory FetchCattleAlerts({
    required final String cattleId,
    final AlertStatus? status,
    final DateTime? startDate,
    final DateTime? endDate,
  }) = _$FetchCattleAlertsImpl;

  String get cattleId;
  AlertStatus? get status;
  DateTime? get startDate;
  DateTime? get endDate;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCattleAlertsImplCopyWith<_$FetchCattleAlertsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcknowledgeAlertImplCopyWith<$Res> {
  factory _$$AcknowledgeAlertImplCopyWith(
    _$AcknowledgeAlertImpl value,
    $Res Function(_$AcknowledgeAlertImpl) then,
  ) = __$$AcknowledgeAlertImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String alertId});
}

/// @nodoc
class __$$AcknowledgeAlertImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$AcknowledgeAlertImpl>
    implements _$$AcknowledgeAlertImplCopyWith<$Res> {
  __$$AcknowledgeAlertImplCopyWithImpl(
    _$AcknowledgeAlertImpl _value,
    $Res Function(_$AcknowledgeAlertImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? alertId = null}) {
    return _then(
      _$AcknowledgeAlertImpl(
        null == alertId
            ? _value.alertId
            : alertId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AcknowledgeAlertImpl implements AcknowledgeAlert {
  const _$AcknowledgeAlertImpl(this.alertId);

  @override
  final String alertId;

  @override
  String toString() {
    return 'AlertEvent.acknowledgeAlert(alertId: $alertId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcknowledgeAlertImpl &&
            (identical(other.alertId, alertId) || other.alertId == alertId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alertId);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcknowledgeAlertImplCopyWith<_$AcknowledgeAlertImpl> get copyWith =>
      __$$AcknowledgeAlertImplCopyWithImpl<_$AcknowledgeAlertImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchUserAlerts,
    required TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchCattleAlerts,
    required TResult Function(String alertId) acknowledgeAlert,
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    filterAlerts,
  }) {
    return acknowledgeAlert(alertId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult? Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult? Function(String alertId)? acknowledgeAlert,
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
  }) {
    return acknowledgeAlert?.call(alertId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult Function(String alertId)? acknowledgeAlert,
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
    required TResult orElse(),
  }) {
    if (acknowledgeAlert != null) {
      return acknowledgeAlert(alertId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserAlerts value) fetchUserAlerts,
    required TResult Function(FetchCattleAlerts value) fetchCattleAlerts,
    required TResult Function(AcknowledgeAlert value) acknowledgeAlert,
    required TResult Function(FilterAlerts value) filterAlerts,
  }) {
    return acknowledgeAlert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult? Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult? Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult? Function(FilterAlerts value)? filterAlerts,
  }) {
    return acknowledgeAlert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult Function(FilterAlerts value)? filterAlerts,
    required TResult orElse(),
  }) {
    if (acknowledgeAlert != null) {
      return acknowledgeAlert(this);
    }
    return orElse();
  }
}

abstract class AcknowledgeAlert implements AlertEvent {
  const factory AcknowledgeAlert(final String alertId) = _$AcknowledgeAlertImpl;

  String get alertId;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcknowledgeAlertImplCopyWith<_$AcknowledgeAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterAlertsImplCopyWith<$Res> {
  factory _$$FilterAlertsImplCopyWith(
    _$FilterAlertsImpl value,
    $Res Function(_$FilterAlertsImpl) then,
  ) = __$$FilterAlertsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlertStatus? status, DateTime? startDate, DateTime? endDate});
}

/// @nodoc
class __$$FilterAlertsImplCopyWithImpl<$Res>
    extends _$AlertEventCopyWithImpl<$Res, _$FilterAlertsImpl>
    implements _$$FilterAlertsImplCopyWith<$Res> {
  __$$FilterAlertsImplCopyWithImpl(
    _$FilterAlertsImpl _value,
    $Res Function(_$FilterAlertsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(
      _$FilterAlertsImpl(
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
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

class _$FilterAlertsImpl implements FilterAlerts {
  const _$FilterAlertsImpl({this.status, this.startDate, this.endDate});

  @override
  final AlertStatus? status;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;

  @override
  String toString() {
    return 'AlertEvent.filterAlerts(status: $status, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterAlertsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, startDate, endDate);

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterAlertsImplCopyWith<_$FilterAlertsImpl> get copyWith =>
      __$$FilterAlertsImplCopyWithImpl<_$FilterAlertsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchUserAlerts,
    required TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    fetchCattleAlerts,
    required TResult Function(String alertId) acknowledgeAlert,
    required TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )
    filterAlerts,
  }) {
    return filterAlerts(status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult? Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult? Function(String alertId)? acknowledgeAlert,
    TResult? Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
  }) {
    return filterAlerts?.call(status, startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchUserAlerts,
    TResult Function(
      String cattleId,
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    fetchCattleAlerts,
    TResult Function(String alertId)? acknowledgeAlert,
    TResult Function(
      AlertStatus? status,
      DateTime? startDate,
      DateTime? endDate,
    )?
    filterAlerts,
    required TResult orElse(),
  }) {
    if (filterAlerts != null) {
      return filterAlerts(status, startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserAlerts value) fetchUserAlerts,
    required TResult Function(FetchCattleAlerts value) fetchCattleAlerts,
    required TResult Function(AcknowledgeAlert value) acknowledgeAlert,
    required TResult Function(FilterAlerts value) filterAlerts,
  }) {
    return filterAlerts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult? Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult? Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult? Function(FilterAlerts value)? filterAlerts,
  }) {
    return filterAlerts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserAlerts value)? fetchUserAlerts,
    TResult Function(FetchCattleAlerts value)? fetchCattleAlerts,
    TResult Function(AcknowledgeAlert value)? acknowledgeAlert,
    TResult Function(FilterAlerts value)? filterAlerts,
    required TResult orElse(),
  }) {
    if (filterAlerts != null) {
      return filterAlerts(this);
    }
    return orElse();
  }
}

abstract class FilterAlerts implements AlertEvent {
  const factory FilterAlerts({
    final AlertStatus? status,
    final DateTime? startDate,
    final DateTime? endDate,
  }) = _$FilterAlertsImpl;

  AlertStatus? get status;
  DateTime? get startDate;
  DateTime? get endDate;

  /// Create a copy of AlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterAlertsImplCopyWith<_$FilterAlertsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
