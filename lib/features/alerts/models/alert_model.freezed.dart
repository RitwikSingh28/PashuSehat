// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AlertThreshold _$AlertThresholdFromJson(Map<String, dynamic> json) {
  return _AlertThreshold.fromJson(json);
}

/// @nodoc
mixin _$AlertThreshold {
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;

  /// Serializes this AlertThreshold to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertThreshold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertThresholdCopyWith<AlertThreshold> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertThresholdCopyWith<$Res> {
  factory $AlertThresholdCopyWith(
    AlertThreshold value,
    $Res Function(AlertThreshold) then,
  ) = _$AlertThresholdCopyWithImpl<$Res, AlertThreshold>;
  @useResult
  $Res call({double? min, double? max});
}

/// @nodoc
class _$AlertThresholdCopyWithImpl<$Res, $Val extends AlertThreshold>
    implements $AlertThresholdCopyWith<$Res> {
  _$AlertThresholdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertThreshold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = freezed, Object? max = freezed}) {
    return _then(
      _value.copyWith(
            min:
                freezed == min
                    ? _value.min
                    : min // ignore: cast_nullable_to_non_nullable
                        as double?,
            max:
                freezed == max
                    ? _value.max
                    : max // ignore: cast_nullable_to_non_nullable
                        as double?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AlertThresholdImplCopyWith<$Res>
    implements $AlertThresholdCopyWith<$Res> {
  factory _$$AlertThresholdImplCopyWith(
    _$AlertThresholdImpl value,
    $Res Function(_$AlertThresholdImpl) then,
  ) = __$$AlertThresholdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? min, double? max});
}

/// @nodoc
class __$$AlertThresholdImplCopyWithImpl<$Res>
    extends _$AlertThresholdCopyWithImpl<$Res, _$AlertThresholdImpl>
    implements _$$AlertThresholdImplCopyWith<$Res> {
  __$$AlertThresholdImplCopyWithImpl(
    _$AlertThresholdImpl _value,
    $Res Function(_$AlertThresholdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlertThreshold
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? min = freezed, Object? max = freezed}) {
    return _then(
      _$AlertThresholdImpl(
        min:
            freezed == min
                ? _value.min
                : min // ignore: cast_nullable_to_non_nullable
                    as double?,
        max:
            freezed == max
                ? _value.max
                : max // ignore: cast_nullable_to_non_nullable
                    as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertThresholdImpl implements _AlertThreshold {
  const _$AlertThresholdImpl({required this.min, required this.max});

  factory _$AlertThresholdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertThresholdImplFromJson(json);

  @override
  final double? min;
  @override
  final double? max;

  @override
  String toString() {
    return 'AlertThreshold(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertThresholdImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  /// Create a copy of AlertThreshold
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertThresholdImplCopyWith<_$AlertThresholdImpl> get copyWith =>
      __$$AlertThresholdImplCopyWithImpl<_$AlertThresholdImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertThresholdImplToJson(this);
  }
}

abstract class _AlertThreshold implements AlertThreshold {
  const factory _AlertThreshold({
    required final double? min,
    required final double? max,
  }) = _$AlertThresholdImpl;

  factory _AlertThreshold.fromJson(Map<String, dynamic> json) =
      _$AlertThresholdImpl.fromJson;

  @override
  double? get min;
  @override
  double? get max;

  /// Create a copy of AlertThreshold
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertThresholdImplCopyWith<_$AlertThresholdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return _Alert.fromJson(json);
}

/// @nodoc
mixin _$Alert {
  @JsonKey(name: 'alertId')
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get cattleId => throw _privateConstructorUsedError;
  String? get cattleName => throw _privateConstructorUsedError;
  String get tagId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _timestampFromJson)
  DateTime get timestamp => throw _privateConstructorUsedError;
  AlertType get type => throw _privateConstructorUsedError;
  AlertSeverity get severity => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  AlertThreshold get threshold => throw _privateConstructorUsedError;
  AlertStatus get status => throw _privateConstructorUsedError;
  String? get acknowledgedBy => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _nullableTimestampFromJson)
  DateTime? get acknowledgedAt => throw _privateConstructorUsedError;

  /// Serializes this Alert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertCopyWith<Alert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCopyWith<$Res> {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) then) =
      _$AlertCopyWithImpl<$Res, Alert>;
  @useResult
  $Res call({
    @JsonKey(name: 'alertId') String id,
    String userId,
    String cattleId,
    String? cattleName,
    String tagId,
    @JsonKey(fromJson: _timestampFromJson) DateTime timestamp,
    AlertType type,
    AlertSeverity severity,
    double value,
    AlertThreshold threshold,
    AlertStatus status,
    String? acknowledgedBy,
    @JsonKey(fromJson: _nullableTimestampFromJson) DateTime? acknowledgedAt,
  });

  $AlertThresholdCopyWith<$Res> get threshold;
}

/// @nodoc
class _$AlertCopyWithImpl<$Res, $Val extends Alert>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? cattleId = null,
    Object? cattleName = freezed,
    Object? tagId = null,
    Object? timestamp = null,
    Object? type = null,
    Object? severity = null,
    Object? value = null,
    Object? threshold = null,
    Object? status = null,
    Object? acknowledgedBy = freezed,
    Object? acknowledgedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            cattleId:
                null == cattleId
                    ? _value.cattleId
                    : cattleId // ignore: cast_nullable_to_non_nullable
                        as String,
            cattleName:
                freezed == cattleName
                    ? _value.cattleName
                    : cattleName // ignore: cast_nullable_to_non_nullable
                        as String?,
            tagId:
                null == tagId
                    ? _value.tagId
                    : tagId // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as AlertType,
            severity:
                null == severity
                    ? _value.severity
                    : severity // ignore: cast_nullable_to_non_nullable
                        as AlertSeverity,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as double,
            threshold:
                null == threshold
                    ? _value.threshold
                    : threshold // ignore: cast_nullable_to_non_nullable
                        as AlertThreshold,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as AlertStatus,
            acknowledgedBy:
                freezed == acknowledgedBy
                    ? _value.acknowledgedBy
                    : acknowledgedBy // ignore: cast_nullable_to_non_nullable
                        as String?,
            acknowledgedAt:
                freezed == acknowledgedAt
                    ? _value.acknowledgedAt
                    : acknowledgedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AlertThresholdCopyWith<$Res> get threshold {
    return $AlertThresholdCopyWith<$Res>(_value.threshold, (value) {
      return _then(_value.copyWith(threshold: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlertImplCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$$AlertImplCopyWith(
    _$AlertImpl value,
    $Res Function(_$AlertImpl) then,
  ) = __$$AlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'alertId') String id,
    String userId,
    String cattleId,
    String? cattleName,
    String tagId,
    @JsonKey(fromJson: _timestampFromJson) DateTime timestamp,
    AlertType type,
    AlertSeverity severity,
    double value,
    AlertThreshold threshold,
    AlertStatus status,
    String? acknowledgedBy,
    @JsonKey(fromJson: _nullableTimestampFromJson) DateTime? acknowledgedAt,
  });

  @override
  $AlertThresholdCopyWith<$Res> get threshold;
}

/// @nodoc
class __$$AlertImplCopyWithImpl<$Res>
    extends _$AlertCopyWithImpl<$Res, _$AlertImpl>
    implements _$$AlertImplCopyWith<$Res> {
  __$$AlertImplCopyWithImpl(
    _$AlertImpl _value,
    $Res Function(_$AlertImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? cattleId = null,
    Object? cattleName = freezed,
    Object? tagId = null,
    Object? timestamp = null,
    Object? type = null,
    Object? severity = null,
    Object? value = null,
    Object? threshold = null,
    Object? status = null,
    Object? acknowledgedBy = freezed,
    Object? acknowledgedAt = freezed,
  }) {
    return _then(
      _$AlertImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        cattleId:
            null == cattleId
                ? _value.cattleId
                : cattleId // ignore: cast_nullable_to_non_nullable
                    as String,
        cattleName:
            freezed == cattleName
                ? _value.cattleName
                : cattleName // ignore: cast_nullable_to_non_nullable
                    as String?,
        tagId:
            null == tagId
                ? _value.tagId
                : tagId // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as AlertType,
        severity:
            null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                    as AlertSeverity,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as double,
        threshold:
            null == threshold
                ? _value.threshold
                : threshold // ignore: cast_nullable_to_non_nullable
                    as AlertThreshold,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as AlertStatus,
        acknowledgedBy:
            freezed == acknowledgedBy
                ? _value.acknowledgedBy
                : acknowledgedBy // ignore: cast_nullable_to_non_nullable
                    as String?,
        acknowledgedAt:
            freezed == acknowledgedAt
                ? _value.acknowledgedAt
                : acknowledgedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertImpl implements _Alert {
  const _$AlertImpl({
    @JsonKey(name: 'alertId') required this.id,
    required this.userId,
    required this.cattleId,
    this.cattleName,
    required this.tagId,
    @JsonKey(fromJson: _timestampFromJson) required this.timestamp,
    required this.type,
    required this.severity,
    required this.value,
    required this.threshold,
    this.status = AlertStatus.newAlert,
    this.acknowledgedBy,
    @JsonKey(fromJson: _nullableTimestampFromJson) this.acknowledgedAt,
  });

  factory _$AlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertImplFromJson(json);

  @override
  @JsonKey(name: 'alertId')
  final String id;
  @override
  final String userId;
  @override
  final String cattleId;
  @override
  final String? cattleName;
  @override
  final String tagId;
  @override
  @JsonKey(fromJson: _timestampFromJson)
  final DateTime timestamp;
  @override
  final AlertType type;
  @override
  final AlertSeverity severity;
  @override
  final double value;
  @override
  final AlertThreshold threshold;
  @override
  @JsonKey()
  final AlertStatus status;
  @override
  final String? acknowledgedBy;
  @override
  @JsonKey(fromJson: _nullableTimestampFromJson)
  final DateTime? acknowledgedAt;

  @override
  String toString() {
    return 'Alert(id: $id, userId: $userId, cattleId: $cattleId, cattleName: $cattleName, tagId: $tagId, timestamp: $timestamp, type: $type, severity: $severity, value: $value, threshold: $threshold, status: $status, acknowledgedBy: $acknowledgedBy, acknowledgedAt: $acknowledgedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.cattleId, cattleId) ||
                other.cattleId == cattleId) &&
            (identical(other.cattleName, cattleName) ||
                other.cattleName == cattleName) &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.threshold, threshold) ||
                other.threshold == threshold) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.acknowledgedBy, acknowledgedBy) ||
                other.acknowledgedBy == acknowledgedBy) &&
            (identical(other.acknowledgedAt, acknowledgedAt) ||
                other.acknowledgedAt == acknowledgedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    cattleId,
    cattleName,
    tagId,
    timestamp,
    type,
    severity,
    value,
    threshold,
    status,
    acknowledgedBy,
    acknowledgedAt,
  );

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      __$$AlertImplCopyWithImpl<_$AlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertImplToJson(this);
  }
}

abstract class _Alert implements Alert {
  const factory _Alert({
    @JsonKey(name: 'alertId') required final String id,
    required final String userId,
    required final String cattleId,
    final String? cattleName,
    required final String tagId,
    @JsonKey(fromJson: _timestampFromJson) required final DateTime timestamp,
    required final AlertType type,
    required final AlertSeverity severity,
    required final double value,
    required final AlertThreshold threshold,
    final AlertStatus status,
    final String? acknowledgedBy,
    @JsonKey(fromJson: _nullableTimestampFromJson)
    final DateTime? acknowledgedAt,
  }) = _$AlertImpl;

  factory _Alert.fromJson(Map<String, dynamic> json) = _$AlertImpl.fromJson;

  @override
  @JsonKey(name: 'alertId')
  String get id;
  @override
  String get userId;
  @override
  String get cattleId;
  @override
  String? get cattleName;
  @override
  String get tagId;
  @override
  @JsonKey(fromJson: _timestampFromJson)
  DateTime get timestamp;
  @override
  AlertType get type;
  @override
  AlertSeverity get severity;
  @override
  double get value;
  @override
  AlertThreshold get threshold;
  @override
  AlertStatus get status;
  @override
  String? get acknowledgedBy;
  @override
  @JsonKey(fromJson: _nullableTimestampFromJson)
  DateTime? get acknowledgedAt;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
